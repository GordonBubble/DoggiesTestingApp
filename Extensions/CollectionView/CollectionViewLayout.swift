//
//  CollectionViewLayout.swift
//  DogApiTestApp
//
//  Created by Mac on 03.11.2021.
//

import UIKit

extension PhotosViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingWidth = Constants.CollectionLayout.sectionInserts.left * (Constants.CollectionLayout.itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / Constants.CollectionLayout.itemsPerRow
        let heightPerItem = availableWidth / 2
        return CGSize(width: widthPerItem, height: heightPerItem)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return Constants.CollectionLayout.sectionInserts
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return Constants.CollectionLayout.sectionInserts.left
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return Constants.CollectionLayout.sectionInserts.left
    }
    
}
