//
//  AddActivityIndicator.swift
//  DogApiTestApp
//
//  Created by Mac on 03.11.2021.
//

import UIKit

extension FirstViewController {
    
    func addIndicator() {
        view.addSubview(activityIndicator)
        activityIndicator.frame = CGRect(origin: CGPoint(x: view.center.x, y: view.center.y), size: CGSize(width: Constants.ActivityIndicator.activityHeightAndWidth, height: Constants.ActivityIndicator.activityHeightAndWidth))
        activityIndicator.startAnimating()
        activityIndicator.isHidden = false
        activityIndicator.color = .black
    }
    
    func offIndicator() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
        }
    }
}
