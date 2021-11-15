//
//  ViewController.swift
//  DogApiTestApp
//
//  Created by Mac on 02.11.2021.
//

import UIKit

final class FirstViewController: UIViewController {
    
    @IBOutlet weak var dogsTableView: UITableView!
    
    let activityIndicator = UIActivityIndicatorView()

    static var nameIndexPath = ""
    var doggiesArray: [String : [String]] = [:]
    
    override func viewDidLoad() {
        addRefreshControl()
        addIndicator()
        getData()
        offIndicator()
    }
}

