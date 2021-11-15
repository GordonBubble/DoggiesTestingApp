//
//  GetDataMethodForFirstVC.swift
//  DogApiTestApp
//
//  Created by Mac on 02.11.2021.
//

import Foundation

extension FirstViewController {
    
    func getData() {
       DataFetcherService.shared.fetchDogsData { [weak self] doggies in
        guard let self = self else { return }
        self.doggiesArray = doggies?.message ?? [:]
        self.dogsTableView.reloadData()
       }
   }    
}
