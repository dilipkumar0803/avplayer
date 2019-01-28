//
//  TableViewCell.swift
//  avplayer
//
//  Created by dilip kumar on 22/01/19.
//  Copyright © 2019 dilip kumar. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imgview: UIImageView!
    
    //@IBOutlet weak var view: UIView!
    
   // @IBOutlet weak var webview: WKWebView!
    
    //@IBOutlet weak var imgview: viewclass!
    //@IBOutlet weak var videoview: viewclass?
    
    @IBOutlet weak var labeltext: UILabel!
    
    var Video :video!{
        didSet{
            updateUI()
        }
    }
    func updateUI(){
        imgview.image = UIImage(named: Video.thumbnailfilename)
        labeltext.text = Video.authorname
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
