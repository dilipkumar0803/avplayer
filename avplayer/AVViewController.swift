//
//  AVViewController.swift
//  avplayer
//
//  Created by dilip kumar on 22/01/19.
//  Copyright © 2019 dilip kumar. All rights reserved.
//

import UIKit
import AVKit

class AVViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if  let path = Bundle.main.path(forResource: "dilip", ofType: ".mp4"){
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoplayer = AVPlayerViewController()
            videoplayer.player = video
            present(videoplayer, animated: true, completion:{
                video.play()})
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
