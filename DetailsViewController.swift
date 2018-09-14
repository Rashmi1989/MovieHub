//
//  DetailsViewController.swift
//  CollectionViewDataSourceBlog
//
//  Created by Rashmi Ranjan Rout on 2/9/18.
//  Copyright © 2018 Erica Millado. All rights reserved.
//

import Foundation
import UIKit
import AVKit


class DetailsViewController:UIViewController {
    
    var nameLabelString=""
    var ratingLabelString=""
    var overViewLabelString=""
    var _posterImage: UIImage!
    @IBOutlet weak var _posterImageView: UIImageView!
    @IBOutlet weak var _nameLabel: UILabel!
    @IBOutlet weak var _doneButton: UIButton!
    @IBOutlet weak var _ratingLabel: UILabel!
    @IBOutlet weak var _descriptionTextView: UITextView!
    

    override func viewDidLoad() {
        
        //print(nameLabelString)
       // print(self._posterImage)
        _nameLabel.text=nameLabelString
        _descriptionTextView.text=overViewLabelString
        _ratingLabel.text = ratingLabelString
        _posterImageView.image = self._posterImage
        
    }
   // @IBOutlet weak var playMovie: UIButton!
    @IBAction func playVideo(_ sender: UIButton) {

        guard let url = URL(string: "https://devimages.apple.com.edgekey.net/samplecode/avfoundationMedia/AVFoundationQueuePlayer_HLS2/master.m3u8") else {
            return
        }

        let player = AVPlayer(url:url)

        let controller = AVPlayerViewController()
        controller.player = player

        present(controller, animated: true){
            player.play()
        }

    }
    
    /*
    @IBAction func playVideo(_ sender: Any) {
        
        guard let url = URL(string: "https://devimages.apple.com.edgekey.net/samplecode/avfoundationMedia/AVFoundationQueuePlayer_HLS2/master.m3u8") else {
                        return
                    }
        
                    let player = AVPlayer(url:url)
        
                    let controller = AVPlayerViewController()
                    controller.player = player
        
                    present(controller, animated: true){
                        player.play()
                    }
            
    }
    */
    
    @IBAction func dismissBtnClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    
}
