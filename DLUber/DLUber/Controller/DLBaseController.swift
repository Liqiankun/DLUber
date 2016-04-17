//
//  DLBaseController.swift
//  DLUber
//
//  Created by FT_David on 16/4/10.
//  Copyright © 2016年 FT_David. All rights reserved.
//

import UIKit

class DLBaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    /** 显示SVProgressHUD */
    func showSVProgressHUD() {
       SVProgressHUD.show()
    }
    /** 消失SVProgressHUD */
    func dimissSVProgressHUD() {
        SVProgressHUD.dismiss()
    }
    
    func showSVProgressWithStatus(status:String)  {
        SVProgressHUD.showWithStatus(status)
    }
    
    func setNavigationItem(title:String,action:Selector,isRight:Bool) {
        var barItem:UIBarButtonItem!
        barItem = UIBarButtonItem(title: title, style: .Plain, target: self, action: action)
        if isRight {
            self.navigationItem.rightBarButtonItem = barItem
        }else{
            self.navigationItem.leftBarButtonItem = barItem
        }
        
    }
    
    func doRight() {
        
    }
  
    func goBack(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
