//
//  PhotosViewController.swift
//  DogApiTestApp
//
//  Created by Mac on 02.11.2021.
//

import UIKit

final class PhotosViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let activityIndicator = UIActivityIndicatorView()
    
    var doggiesPhotos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addIndicator()
        getPhotos()
        navigationItem.title = FirstViewController.nameIndexPath
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.bigPhotoSegue {
            let photoVC = segue.destination as! BigPhotoViewController
            let cell = sender as! PhotosOfDogsCell
            guard let image = cell.dogImage.image else { return }
            photoVC.image = image
        }
    }
}
