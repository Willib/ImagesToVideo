//
//  ViewController.swift
//  ImagesToVideo
//
//  Created by Wulei on 2016/12/24.
//  Copyright © 2016年 wulei. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var playerView: CXEPlayerView!
    var player:AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let images = [UIImage(named: "./25.jpg")!, UIImage(named: "./27.jpg")!, UIImage(named: "./29.jpg")!, UIImage(named: "./30.jpg")!, UIImage(named: "./31.jpg")!]
//        let videoSittings = CXEImageToVideoAsync.videoSettings(codec: AVVideoCodecH264, width: 480, height: 320)
//        let Async = CXEImageToVideoAsync(videoSettings: videoSittings)
//        Async.createMovieFrom(images: images){ (fileURL:URL) in
//            print(fileURL.absoluteString)
//            let video = AVURLAsset(url: fileURL)
//            print("duration: \(video.duration.seconds)")
//            let playItem = AVPlayerItem(asset: video)
//            self.player = AVPlayer(playerItem: playItem)
//            self.playerView.player = self.player
//        }
        
        let imageURL = Bundle.main.url(forResource: "860", withExtension: "png")
        let videoSettings = CXEImageToVideoSync.videoSettings(codec: AVVideoCodecH264, width: 480, height: 320)
        let sync = CXEImageToVideoSync(videoSettings: videoSettings)
        let fileURL = sync.createMovieFrom(url: imageURL!, duration: 4)
        print(fileURL.absoluteString)
        let video = AVURLAsset(url: fileURL)
        print("duration: \(video.duration.seconds)")
        let playItem = AVPlayerItem(asset: video)
        self.player = AVPlayer(playerItem: playItem)
        self.playerView.player = self.player
        
    }
    @IBAction func playButton(_ sender: UIButton) {
        self.player?.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

