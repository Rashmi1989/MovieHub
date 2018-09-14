//
//  AppDelegate.swift
//  Movie Hub
//
//  Created by Rashmi Ranjan Rout on 8/2/18.
//  Copyright © 2018 Rashmi Ranjan Rout. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let audiSession = AVAudioSession.sharedInstance()
        do {
            try audiSession.setCategory(AVAudioSessionCategoryPlayback)
        }
        catch {
            print("Settings category failed")
        }
        return true
    }

}

