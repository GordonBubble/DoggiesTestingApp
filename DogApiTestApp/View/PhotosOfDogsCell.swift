//
//  PhotosOfDogsCell.swift
//  DogApiTestApp
//
//  Created by Mac on 02.11.2021.
//

import UIKit

final class PhotosOfDogsCell: UICollectionViewCell {
    
    @IBOutlet weak var dogImage: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        dogImage.image = nil
    }
    
    func configure(photos: [String], indexPath: IndexPath) {
        CacheImagesService.shared.downloadImage(from: photos[indexPath.row]) { [weak self] image in
            guard let self = self else { return }
            self.backgroundColor = .gray
            self.dogImage.image = image
            self.isUserInteractionEnabled = true
        }
    }
        
//    func configure(photos: [String], indexPath: IndexPath) {
//        self.isUserInteractionEnabled = false
//        
//        DispatchQueue.global().async {
//            
//            guard let url = URL(string: photos[indexPath.row]) else { return }
//            guard let data = try? Data(contentsOf: url) else { return }
//                        
//            DispatchQueue.main.async {
//                
//                self.dogImage.image = UIImage(data: data)
//                self.isUserInteractionEnabled = true
//            }
//        }
//    }
}
