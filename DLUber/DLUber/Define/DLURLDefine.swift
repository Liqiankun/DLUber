//
//  DLURLDefine.swift
//  DLUber
//
//  Created by FT_David on 16/4/16.
//  Copyright © 2016年 FT_David. All rights reserved.
//

import Foundation

func ServerAddress()->String{
    
    var ServerAddress = "http://www.uber.com"
    #if APPSTORE//如果是AppStore版本或者Release版本用这个地址
        ServerAddress = "http://www.uber.com"
    #endif
     
    return ServerAddress;

    
}