//
//  ViewController.swift
//  CollectionViewBurger
//
//  Created by Andjela Rakic on 9/5/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let burgers = ["Big Mac", "Cheeseburger", "Double Quarter Pounder", "Hamburger", "Quarter Pounder"]
    
    let burgerImages: [UIImage] = [
        
        UIImage(named: "bigmac")!,
        UIImage(named: "cheeseburger")!,
        UIImage(named: "doublequarterpounder")!,
        UIImage(named: "hamburger")!,
        UIImage(named: "quarterpounder")!,
        
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
       
        let flowLayout = UICollectionViewFlowLayout()
        
        flowLayout.sectionInset = UIEdgeInsets (top: 0, left: 5, bottom: 0, right: 5)
        flowLayout.minimumInteritemSpacing = 5
        flowLayout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/2, height: self.collectionView.frame.size.height/3)
        
        collectionView.collectionViewLayout = flowLayout
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return burgers.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            
            cell.hamburgerLabel.text = burgers [indexPath.item]
            cell.hamburgerImageView.image = burgerImages [indexPath.item]
            
            return cell
            
        }
        
       return UICollectionViewCell()
        
    }
}
