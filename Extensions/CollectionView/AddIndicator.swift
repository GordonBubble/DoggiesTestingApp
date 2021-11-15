//
//  AddIndicator.swift
//  DogApiTestApp
//
//  Created by Mac on 04.11.2021.
//

import Foundation
import UIKit

extension PhotosViewController {
    
    func addIndicator() {
        view.addSubview(activityIndicator)
        activityIndicator.frame.size = CGSize(width: Constants.ActivityIndicator.activityHeightAndWidth, height: Constants.ActivityIndicator.activityHeightAndWidth)
        activityIndicator.center = super.view.center
        activityIndicator.startAnimating()
        activityIndicator.isHidden = false
        activityIndicator.color = .gray
    }
    
    func offIndicator() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.activityIndicator.stopAnimating()
            self.activityIndicator.isHidden = true
        }
    }
}
