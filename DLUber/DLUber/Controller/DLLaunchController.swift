//
//  DLLaunchController.swift
//  DLUber
//
//  Created by FT_David on 16/4/10.
//  Copyright © 2016年 FT_David. All rights reserved.
//

import UIKit
import AVFoundation

class DLLaunchController: DLBaseController {

    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var videoBackView: UIView!
    
    var avPlayer:AVPlayer!
    var avPlayerItem:AVPlayerItem!
    var location:DLLocation!
    @IBAction func login(sender: UIButton) {
        location = DLLocation()
        location.startLocation()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playBackVideo()
        playBackgroundAnimation()
        //showSVProgressHUD()
    
        //backImageView.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }
    
    
    func playBackgroundAnimation() {
//        var imageArray:[UIImage] = []
//        for i in 1...60{
//            let imageName = "logo-" + String(format: "%",no_argument:i)
//            let image: UIImage = UIImage(named: imageName)!
//            imageArray.append(image)
//        }
//        
//        backImageView?.animationImages = imageArray
//        backImageView?.animationRepeatCount = 1
//        backImageView?.animationDuration = 5
//        backImageView.startAnimating()
//        //如果想设置动画结束后imageView显示的图片可能在XIb文件中设置
        
        UIView.animateWithDuration(0.7, delay: 3, options: .CurveEaseOut, animations: {
            self.videoBackView.alpha = 1.0
            self.avPlayer.play()
            
            print(self.avPlayer.status)
            }, completion: nil)
    }
    
    func playBackVideo() {
        
        let videoUrl = NSBundle.mainBundle().URLForResource("welcome_video", withExtension: "mp4")
        
        self.avPlayerItem = AVPlayerItem(URL:videoUrl!)
        
        self.avPlayer = AVPlayer(playerItem: avPlayerItem)

        let avPlayerlayer = AVPlayerLayer(player: avPlayer)
        
        avPlayerlayer.frame = (videoBackView?.bounds)!
        avPlayerlayer.videoGravity = AVLayerVideoGravityResizeAspect
        
        //隐藏背景图片
        videoBackView!.layer.insertSublayer(avPlayerlayer, atIndex: 0)
        videoBackView!.alpha = 0.0
        
        //注册通知（当视频播放完毕的时候调用）
        NSNotificationCenter.defaultCenter().addObserver(self, selector:#selector(DLLaunchController.didFinishedPlaying(_:)), name: AVPlayerItemDidPlayToEndTimeNotification, object: avPlayerItem)
      
    }
    
    func didFinishedPlaying(sender:NSNotification){
        
        let item = sender.object as! AVPlayerItem
        //将时间退回到开始
        item.seekToTime(kCMTimeZero)
        self.avPlayer.play()
    }
    
    


}
