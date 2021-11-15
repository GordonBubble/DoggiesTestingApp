//
//  GetPhotosDataForSecondVC.swift
//  DogApiTestApp
//
//  Created by Mac on 03.11.2021.
//

import Foundation

extension PhotosViewController {
    
    func getPhotos() {
        DataFetcherService.shared.fetchDogsPhotosData { [weak self] photoDoggies in
            guard let self = self else { return }
            
            self.doggiesPhotos = photoDoggies?.message ?? []
            self.collectionView.reloadData()
        }
    }
}
