//
//  DLDefine.swift
//  DLUber
//
//  Created by FT_David on 16/4/10.
//  Copyright © 2016年 FT_David. All rights reserved.
//

import Foundation
import UIKit

//相当于OC的define
let LoadingStr = "加载中"

func DLLog(message:String){
    
    #if DEBUG//这个DEBUG必须先在BulidSetting里添加
        print("Log:\(message),\(#function)")
    #else
        
    #endif
}

let screenHeight = UIScreen.mainScreen().bounds.height

func isiPhone()->Bool{
    if screenHeight == 569 {
        return true
    }else{
        return false
    }
}


func CurrentSystem() -> String {
    #if os(iOS)
        return "IOS"
    #else
        return "OX"
    #endif
}


func moreThanIOS8() ->Bool{
    let versionNumber = UIDevice.currentDevice().systemName as NSString
    let number = versionNumber.floatValue
    if number > 8 {
        return true
    }else{
        return false
    }
    
}
