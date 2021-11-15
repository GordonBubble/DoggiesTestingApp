//
//  ListOfDogsCells.swift
//  DogApiTestApp
//
//  Created by Mac on 02.11.2021.
//

import UIKit

final class ListOfDogsCells: UITableViewCell {
        
    func configureTableView(array: [String], indexPath: IndexPath) {
        self.selectionStyle = .none
        self.textLabel?.text = array[indexPath.row]
    }
}
