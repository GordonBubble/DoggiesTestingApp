//
//  AddRefreshControl.swift
//  DogApiTestApp
//
//  Created by Mac on 03.11.2021.
//

import UIKit

extension FirstViewController {
    
    func addRefreshControl() {
        let refreshing = UIRefreshControl()
        refreshing.addTarget(self, action: #selector(refresh), for: .valueChanged)
        super.viewDidLoad()
        dogsTableView.refreshControl = refreshing
    }
    
    @objc private func refresh(refreshControl: UIRefreshControl) {
        getData()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            refreshControl.endRefreshing()
        }
    }
}
