//
//  FullScreenToastActivity.swift
//  AdClear Lite
//
//  Created by Damon on 16/8/15.
//  Copyright © 2016年 Seven. All rights reserved.
//

import UIKit

class FullScreenActivity: UIView {

    @IBOutlet weak var activityCenter: NSLayoutConstraint!
    @IBOutlet weak var messageLabel: UILabel!
    
    static func create() -> FullScreenActivity {
        let view = UINib(nibName: "FullScreenActivity", bundle: nil).instantiateWithOwner(nil, options: nil)[0]
        
        return view as! FullScreenActivity
    }
    
    var message:String? {
        set{
            messageLabel.text = message
            
            if message == nil
            {
                activityCenter.constant = 0
            }
            else
            {
                activityCenter.constant = -15
            }
        }
        
        get {
            return messageLabel.text
        }
    }

}
