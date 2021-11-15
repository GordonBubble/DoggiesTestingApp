
import Foundation
import UIKit

protocol DataFetcher {
    func fetchGenericData<T: Codable>(urlString: String, completion: @escaping (T?) -> Void)
}

class NetworkDataFetcher: DataFetcher {
    
    private var networking: Networking
    var imageCache = NSCache<NSString, UIImage>()
    init(networking: Networking = NetworkService()) {
        self.networking = networking
    }
    
    
    func fetchGenericData<T: Codable>(urlString: String, completion: @escaping (T?) -> Void) {
        
        networking.request(urlString: urlString) { data, error in
            
            let decoded = self.decodeJSON(type: T.self, from: data)
            DispatchQueue.main.async {
                completion(decoded)
            }
        }
    }
    
    func decodeJSON<T: Codable> (type: T.Type, from data: Data?) -> T? {
        guard let data = data else { return nil }
        
        do {
            
            let objects = try JSONDecoder().decode(type.self, from: data)
            return objects
            
        } catch let error{
            print("failed to decode JSON \(error.localizedDescription)")
            return nil
        }
    }
}
