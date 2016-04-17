//
//  AppDelegate.swift
//  DLUber
//
//  Created by FT_David on 16/4/10.
//  Copyright © 2016年 FT_David. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       
       ShowLaunchController()
        
        return true
    }
    
    func ShowLaunchController()  {
       
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let launchController = DLLaunchController()
        
        self.window?.rootViewController = launchController;
        self.window?.makeKeyAndVisible()
        
    }

    func applicationWillResignActive(application: UIApplication) {
      
    }

    func applicationDidEnterBackground(application: UIApplication) {
        
    }
    
    func applicationWillEnterForeground(application: UIApplication) {

    }

    func applicationDidBecomeActive(application: UIApplication) {
  
    }

    func applicationWillTerminate(application: UIApplication) {
        
    }


}

