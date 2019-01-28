//
//  tableviewcontroller.swift
//  avplayer
//
//  Created by dilip kumar on 23/01/19.
//  Copyright © 2019 dilip kumar. All rights reserved.
//

import UIKit
import AVKit

class tableviewcontroller: UITableViewController {
    var videos : [video] = video.fetchvideos()
    var player = AVPlayer()
    var playerviewcontroller = AVPlayerViewController()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        let video = videos[indexPath.row]
        cell?.Video = video
        //cell?.labeltext.text = [indexPath.row]
        
        return cell!
    }
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        playVideo(at: indexPath)
    }
    func playVideo(at indexPath: IndexPath){
        let selectedVideo = videos[indexPath.row]
        let videoPath = Bundle.main.path(forResource: selectedVideo.videofilename, ofType: "mp4")
        let videoPathURL = URL(fileURLWithPath: videoPath!)
        player = AVPlayer(url: videoPathURL)
        playerviewcontroller.player = player
        
        self.present(playerviewcontroller, animated: true, completion: {self.playerviewcontroller.player?.play()
            
        })
        
    }
    

}
