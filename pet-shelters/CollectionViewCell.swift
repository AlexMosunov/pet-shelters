//
//  CollectionViewCell.swift
//  pet-shelters
//
//  Created by iOS on 19.10.2020.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var openButton: UIButton!
    @IBOutlet weak var newItemLabel: UILabel!
    
    
    
    
    
    func updateUI(image: String?, btnLabel: String?, newItemLbl: String?, itemNumber: Int) {
        setLabelsUI()
        if itemNumber >= 5 {
            newItemLabel.alpha = 0.0
        } else {
            newItemLabel.alpha = 1.0
        }
        openButton.setTitle(btnLabel ?? "Open", for: .normal)
        newItemLabel.text = newItemLbl ?? "New"
        
        guard let imageString = image else { return }
        
        guard let imageStringURL = URL(string: imageString) else { return }
        
//        imageView.kf.setImage(with: imageStringURL)
  
    }
    
    
    
    func setLabelsUI() {
        newItemLabel.layer.masksToBounds = true
        newItemLabel.layer.cornerRadius = newItemLabel.frame.height / 2
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 15
        containerView.layer.cornerRadius = 15
        containerView.clipsToBounds = true
        openButton.layer.cornerRadius = openButton.frame.height / 2
    }
    
    
}
