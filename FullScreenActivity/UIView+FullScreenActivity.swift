//
//  UIView+FullScreenActivitor.swift
//  AdClearSafari
//
//  Created by LuoLouis on 16/5/5.
//  Copyright © 2016年 Seven. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    public func showFullScreenActivity()
    {
        showFullScreenActivity(nil)
    }
    
    public func showFullScreenActivity(message:String?)
    {
        hideFullScreenActivity()
        
        let overlayView = FullScreenActivity.create()
        overlayView.frame = UIScreen.mainScreen().bounds
        overlayView.message = message
        
        self.fullScreenToastOverlayView = overlayView
    }
    
    public func hideFullScreenActivity()
    {
        
        self.fullScreenToastOverlayView = nil;
    }
    
    private struct AssociatedKeys {
        static var FullScreenToastOverlayView = "FullScreenActivityOverlayView"
    }
    
    //this lets us check to see if the item is supposed to be displayed or not
    var fullScreenToastOverlayView : UIView? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.FullScreenToastOverlayView) as? UIView
        }
        
        set {
            fullScreenToastOverlayView?.removeFromSuperview();
            
            objc_setAssociatedObject(self,&AssociatedKeys.FullScreenToastOverlayView,newValue,objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            
            if newValue != nil
            {
                addSubview(newValue!)
            }
        }
    }
}