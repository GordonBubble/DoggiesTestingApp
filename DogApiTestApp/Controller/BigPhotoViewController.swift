//
//  BigPhotoViewController.swift
//  DogApiTestApp
//
//  Created by Mac on 03.11.2021.
//

import UIKit

final class BigPhotoViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
        navigationItem.title = FirstViewController.nameIndexPath
        createLongGesture()
    }
}
