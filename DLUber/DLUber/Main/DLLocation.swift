//
//  DLLocation.swift
//  DLUber
//
//  Created by FT_David on 16/4/17.
//  Copyright © 2016年 FT_David. All rights reserved.
//

import UIKit
import CoreLocation
class DLLocation: NSObject,CLLocationManagerDelegate{
    
    var locationManager:CLLocationManager!
    
    
    func startLocation() {
        
        if CLLocationManager.locationServicesEnabled(){

            locationManager = CLLocationManager()//一定不要忘了初始化
            locationManager?.delegate = self;//设置代理
            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
            locationManager?.distanceFilter = 100
         if #available(iOS 8.0, *) {
                locationManager?.requestAlwaysAuthorization()
            } else {
                // Fallback on earlier versions
            }
            
            locationManager?.startUpdatingLocation()
       }
        
    }
    
    func getCurrentCity(location:CLLocation){
        
        let corder = CLGeocoder()
        //根据地理位置获取当前位置
        corder.reverseGeocodeLocation(location, completionHandler: {
            (marks:[CLPlacemark]?,error:NSError?) in
            
            if marks != nil{
                for mark in marks! {
                    print(mark.name)
                }
            }
        })
    }
 
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        DLLog(String(status))
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateToLocation newLocation: CLLocation, fromLocation oldLocation: CLLocation) {
        getCurrentCity(newLocation)
        
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        getCurrentCity(locations[0])
        manager.stopUpdatingLocation();
    }
    

}
