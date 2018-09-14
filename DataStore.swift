//
//  DataStore.swift
//  Movie Hub
//
//  Created by Rashmi Ranjan Rout on 8/2/18.
//  Copyright © 2018 Rashmi Ranjan Rout. All rights reserved.
//

import Foundation
import UIKit

final class DataStore {
    
    static let sharedInstance = DataStore()
    fileprivate init() {}
    
    var audiobooks: [Audiobook] = []
    var images: [UIImage] = []

    func getBooks(completion: @escaping () -> Void) {
        APIClient.getAudiobooksAPI { (json) in
            if let results = json?["results"] as?[AudiobookJSON] {
                for i in 0..<results.count{
                let newAudiobook = Audiobook(dictionary: results[i])
                self.audiobooks.append(newAudiobook)
             }
                completion()
        }
     }
        
    }
    
    func getBookImages(completion: @escaping () -> Void) {
        getBooks { 
            for book in self.audiobooks {
                let resultStr = "https://image.tmdb.org/t/p/w92\(book.coverImage)"
               // print(resultStr)
                let url = URL(string: resultStr)
                let data = try? Data(contentsOf: url!)
                if let imageData = data {
                    let image = UIImage(data: imageData)
                    self.images.append(image!)
                }
            }
            OperationQueue.main.addOperation {
                completion()
            }
        }
    }
}
