//
//  CollectionViewCell.swift
//  CollectionViewBurger
//
//  Created by Andjela Rakic on 9/7/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
   
    @IBOutlet var hamburgerImageView: UIImageView!
    
    
    
    @IBOutlet var hamburgerLabel: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
