//
//  Audiobook.swift
//  Movie Hub
//
//  Created by Rashmi Ranjan Rout on 8/2/18.
//  Copyright © 2018 Rashmi Ranjan Rout. All rights reserved.
//

import Foundation

struct Audiobook {
    let name: String
    let author: String
    let coverImage: String
    let rating: Double
    let overView: String
    
    init(dictionary: AudiobookJSON) {
        self.name = dictionary["original_title"] as! String
        self.author = dictionary["title"] as! String
        self.coverImage = dictionary["poster_path"] as! String
        self.rating = dictionary["vote_average"] as! Double
        self.overView = dictionary["overview"] as! String
    
    }
    
}
