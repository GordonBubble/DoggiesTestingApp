//
//  TableViewDataSourse.swift
//  DogApiTestApp
//
//  Created by Mac on 02.11.2021.
//

import UIKit

extension FirstViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doggiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dogsTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListOfDogsCells
        
        let filteredArray = doggiesArray.map { $0.key.capitalized }
        cell.configureTableView(array: filteredArray, indexPath: indexPath)

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let filteredArray = doggiesArray.map { $0.key }
        FirstViewController.nameIndexPath = filteredArray[indexPath.row]
    }
    
    
}
