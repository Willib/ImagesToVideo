//
//  CXEPlayer.swift
//  CXEPlayer
//
//  Created by wulei on 2016/11/16.
//  Copyright © 2016年 wulei. All rights reserved.
//

import UIKit
import AVFoundation

public class CXEPlayerView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    public var player:AVPlayer?{
        get{
            return playerLayer.player
        }
        set{
            playerLayer.player = newValue
        }
    }
    
    public var playerLayer:AVPlayerLayer {
        return layer as! AVPlayerLayer
    }
    
    override public class var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}
