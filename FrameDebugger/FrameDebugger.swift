//
//  DebugFrames.swift
//  TinderSwipe
//
//  Created by Jille van der Weerd on 08/01/2018.
//  Copyright © 2018 De Programmeermeneer. All rights reserved.
//

import UIKit

class FrameDebugger {
    
    func debug(view: UIView) -> UIView {
        let rect = UIView(frame: view.frame)
        rect.backgroundColor = .black
        rect.alpha = 0.5
        return rect
    }
    
    func debugSubviewsOf(view: UIView) -> [UIView] {
        let children = view.subviews
        var frames = [UIView]()
        for subview in children {
            let rect = UIView(frame: subview.frame)
            rect.backgroundColor = .black
            rect.alpha = 0.5
            frames.append(rect)
        }
        return frames
    }
}

extension UIView {
    
    func addSubviews(views: [UIView]) {
        for view in views {
            self.addSubview(view)
        }
    }
}
