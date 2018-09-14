//
//  CollectionViewCell.swift
//  Movie Hub
//
//  Created by Rashmi Ranjan Rout on 8/2/18.
//  Copyright © 2018 Rashmi Ranjan Rout. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var bookImage: UIImageView!
    @IBOutlet var bookLabel: UILabel!
    
    func displayContent(image: UIImage, title: String) {
        bookImage.image = image
        bookLabel.text = title
    }
    
}
