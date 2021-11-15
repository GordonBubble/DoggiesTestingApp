//
//  CacheImages.swift
//  DogApiTestApp
//
//  Created by Mac on 04.11.2021.
//

import Foundation
import UIKit

class CacheImagesService {
    
    static let shared = CacheImagesService()
    let cache = NSCache<NSString, UIImage>()
    
    func downloadImage(from urlString: String, completion: @escaping (UIImage?) -> ()) {
        let cacheKey = NSString(string: urlString)
        
        if let image = cache.object(forKey: cacheKey) {
            completion(image)
            return
        }
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let self = self,
                  error == nil,
                  let response = response as? HTTPURLResponse, response.statusCode == 200,
                  let data = data,
                  let image = UIImage(data: data) else {
                completion(nil)
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            DispatchQueue.main.async {
                completion(image)
            }
        }
        task.resume()
    }
}
