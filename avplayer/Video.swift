//
//  videos.swift
//  avplayer
//
//  Created by dilip kumar on 23/01/19.
//  Copyright © 2019 dilip kumar. All rights reserved.
//

import Foundation
struct video {
    let authorname : String
    let videofilename : String
    let description : String
    let thumbnailfilename : String
    
    static func fetchvideos() ->[video]{
        let v1 = video(authorname: "Video1", videofilename: "v1",description: "This Example Video", thumbnailfilename : "v1")
        let v2 = video(authorname: "Video1", videofilename: "v1",description: "This Example Video", thumbnailfilename : "v1")
        
       return [v1,v2]
    }
}
