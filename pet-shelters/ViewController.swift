//
//  ViewController.swift
//  pet-shelters
//
//  Created by iOS on 15.10.2020.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        
        
        
    }


}

//MARK: - UICollectionViewDelegate, UICollectionViewDataSource

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
//        let imageURLString = apiManager.imageObjectsArray[indexPath.row]
//        print(indexPath.row)
//        cell.updateUI(image: imageURLString.url, btnLabel: apiManager.localizationObject?.input_7, newItemLbl: apiManager.localizationObject?.input_6, itemNumber: indexPath.row)
//        cell.collectionCellDelegate = self
//        cell.index = indexPath
//
//
        return cell
    }
    
 
}
