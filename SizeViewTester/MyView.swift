//
//  MyView.swift
//  SizeViewTester
//
//  Created by Robert Brost on 05/31/16.
//  Copyright © 2016 RFBrost. All rights reserved.
//

import UIKit

// ---------------------------------------------------------------- class MyView

class MyView: UIView {
    
    // var contentScaleFactor: CGFloat
    // var autoresizingMask: UIViewAutoresizing {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    // ------------------------------------------------- MyView: initWithFrame()
    
    func initWithFrame() {
        print("MyView: initWithFrame()")
    
    }   //  end of initWithFrame
    
    // ------------------------------------------------- MyView: initWithCoder()
    
    func initWithCoder() {
        print("MyView: initWithCoder()")
       
    }   //  end of initWithFrame

    
    // ------------------------------------------------------ MyView: drawRect()
    
    override func drawRect(rect: CGRect) {
        // call setNeedsDisplay() in order to trigger the system to call 
        // drawRect(CGRect).  Never call drawRect() directly!!
        
        // Drawing code
        print("MyView: drawRect()")
        
    }   //  end of unc drawRect(rect: CGRect)
    
    // ----------------------------------------- MyView: updateViewConstraints()
    
    override func updateConstraints() {
        // call func setNeedsUpdateConstraints() when things change
        // then the system calls updateViewConstraints()
        
        super.updateConstraints()
        print("MyView: updateConstraints()")
        
    }   //  end of func updateConstraints()


    // -------------------------------------------------------------------------
    
}  //  end of class MyView: UIView
