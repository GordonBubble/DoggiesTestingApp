//
//  AddGestureRecognizerInBigPhotoVC.swift
//  DogApiTestApp
//
//  Created by Mac on 03.11.2021.
//

import UIKit

extension BigPhotoViewController {
    
    func createLongGesture() {
        let longGesture = UILongPressGestureRecognizer()
        view.addGestureRecognizer(longGesture)
        longGesture.addTarget(self, action: #selector(clickLongPress))
    }
    
    @objc private func clickLongPress() {
        // нужно добавить ключ Privacy - Photo Library Additions Usage Description в info.plist
        let shareController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(shareController, animated: true, completion: nil)
    }
}
