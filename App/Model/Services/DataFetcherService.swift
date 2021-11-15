//
//  DataFetcherService.swift
//  DogApiTestApp
//
//  Created by Mac on 02.11.2021.
//

import Foundation
import UIKit

class DataFetcherService {
    
    private var dataFetcher: DataFetcher
    static let shared = DataFetcherService()

    init(dataFetcher: DataFetcher = NetworkDataFetcher()) {
        self.dataFetcher = dataFetcher
    }
    
    func fetchDogsData(completion: @escaping (DogsModel?) -> Void) {
        let urlDogsData = "https://dog.ceo/api/breeds/list/all"
        dataFetcher.fetchGenericData(urlString: urlDogsData, completion: completion)
    }
    
    func fetchDogsPhotosData(completion: @escaping (PhotoDogsModel?) -> Void) {
        let stringIndexName = "\(FirstViewController.nameIndexPath)"
        let urlPhotosDogsData = "https://dog.ceo/api/breed/\(stringIndexName)/images"
        dataFetcher.fetchGenericData(urlString: urlPhotosDogsData, completion: completion)
    }
    
    
    
}
