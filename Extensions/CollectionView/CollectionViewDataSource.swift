//
//  CollectionViewDataSource.swift
//  DogApiTestApp
//
//  Created by Mac on 03.11.2021.
//

import Foundation
import UIKit

extension PhotosViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return doggiesPhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! PhotosOfDogsCell
                
        cell.isUserInteractionEnabled = false
        cell.configure(photos: doggiesPhotos, indexPath: indexPath)
        offIndicator()
        return cell
    }
}

