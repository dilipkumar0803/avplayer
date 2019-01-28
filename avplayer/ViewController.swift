//
//  ViewController.swift
//  avplayer
//
//  Created by dilip kumar on 22/01/19.
//  Copyright © 2019 dilip kumar. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation



class ViewController: UIViewController {
    
    @IBAction func playbtn(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "v1", ofType: ".mp4"){
     let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoplayer = AVPlayerViewController()
            videoplayer.player = video
            present(videoplayer, animated: true, completion:{
                video.play()})
    
        }
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

