//
//  CreateAccountController.swift
//  DLUber
//
//  Created by FT_David on 16/4/17.
//  Copyright © 2016年 FT_David. All rights reserved.
//

import UIKit

class CreateAccountController: DLBaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "创建账户"
        
        setNavigationItem("下一步", action:#selector(DLBaseController.doRight), isRight: true)
        setNavigationItem("取消", action: #selector(DLBaseController.goBack), isRight: false)
        
    }
    
    override func doRight() {
        print("Do Right")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
