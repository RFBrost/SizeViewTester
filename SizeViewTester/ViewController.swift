//
//  TestViewController.swift
//  SizeViewTester
//
//  Created by Robert Brost on 05/31/16.
//  Copyright © 2016 RFBrost. All rights reserved.
//

import UIKit

internal var viewControllerRef: TestViewController? = nil

// ---------------------- sizeClassDescription(UIUserInterfaceSizeClass)->String

private func sizeClassDescription(sizeClass: UIUserInterfaceSizeClass)->String {
    switch sizeClass {
    case .Compact:
        return "Compact"
    case .Regular:
        return "Regular"
    case .Unspecified:
        return "Unspecified"
    }   // end of switch
}   // end of func sizeClassDescription(UIUserInterfaceSizeClass)->String

// ------------- userInterfaceIdiomDescription(UIUserInterfaceSizeClass)->String

private func userInterfaceIdiomDescription(userDevice: UIUserInterfaceIdiom)->String {
    switch userDevice {
    case .Phone:
        return "Phone"
    case .Pad:
        return "Pad"
    case .TV:
        return "TV"
    case .CarPlay:
        return "CarPlay"
    case .Unspecified:
        return "Unspecified"
    }   // end of switch
}   // end of func userInterfaceIdiomDescription(UIUserInterfaceIdiom)->String

// ----------------- userInterfaceIdiomDescription(UIUserInterfaceIdiom)->String

private func forceTouchDescription(forceTouchCap: UIForceTouchCapability)->String {
    switch forceTouchCap {
    case .Available:
        return "Available"
    case .Unavailable:
        return "Unavailable"
    case .Unknown:
        return "Unknown"
    }   // end of switch
}   // end of userInterfaceIdiomDescription(UIUserInterfaceIdiom)->String

// ------------------------- orientationDescription(UIDeviceOrientation)->String

private func orientationDescription(orientation: UIDeviceOrientation)->String {
    switch orientation {
    case .Portrait:
        return "Portrait"
    case .PortraitUpsideDown:
        return "PortraitUpsideDown"
    case .LandscapeLeft:
        return "LandscapeLeft"
    case .LandscapeRight:
        return "LandscapeRight"
    case .FaceUp:
        return "FaceUp"
    case .FaceDown:
        return "FaceDown"
    case .Unknown:
        return "Unknown"
    }   //  end of switch
}   // end of func orientationDescription(UIDeviceOrientation)->String

// ------------------------------------------ orientation()->UIDeviceOrientation

private func orientation()->UIDeviceOrientation {
    let myDevice = UIDevice.currentDevice()
    return myDevice.orientation
}   //  end of func orientation()->UIDeviceOrientation

// ------------ sizeClass()->(UIUserInterfaceSizeClass,UIUserInterfaceSizeClass)

private func sizeClass()->(horizonal: UIUserInterfaceSizeClass,
                           vertical: UIUserInterfaceSizeClass   ) {
        if viewControllerRef != nil {
            let hSizeClass = viewControllerRef!.traitCollection.horizontalSizeClass
            let vSizeClass = viewControllerRef!.traitCollection.verticalSizeClass
            return (hSizeClass,vSizeClass)
        }
        else {
            return (.Unspecified, .Unspecified)
        }
}   //  end of func sizeClass()->(UIUserInterfaceSizeClass,UIUserInterfaceSizeClass)

// -------------------------------------------------------------- size()->CGSize

private func size()->CGSize {
        if let size = viewControllerRef?.view.bounds.size {
            return size
        }
        else {
            return CGSizeMake(0.0, 0.0)
        }
}   //  end of func size()->CGSize

// ------------------------------------------- userIdiom()->UIUserInterfaceIdiom

private func userIdiom()->UIUserInterfaceIdiom {
    if viewControllerRef != nil {
        let uIdiom = viewControllerRef!.traitCollection.userInterfaceIdiom
        return uIdiom
    }
    else {
        return .Unspecified
    }
}   //  end of func userIdiom()->UIUserInterfaceIdiom

// ----------------------------------------------------- displayScale()->CGFloat

private func displayScale()->CGFloat {
    if viewControllerRef != nil {
        let scale = viewControllerRef!.traitCollection.displayScale
        return scale
    }
    else {
        return 0.0
    }
}   //  end of func displayScale()->CGFloat

// ---------------------------------------- forceTouch()->UIForceTouchCapability

private func forceTouch()->UIForceTouchCapability {
    if viewControllerRef != nil {
        let fTouch = viewControllerRef!.traitCollection.forceTouchCapability
        return fTouch
    }
    else {
        return .Unknown
    }
}   //  end of func forceTouch()->UIForceTouchCapability

// ------------------------------------------------------------- displayTraits()

private func displayTraits() {
    print("Device orientation is: \(orientationDescription(orientation()))")
    print("Current screen size is:\(size())")
    
    let (hSize, vSize) = sizeClass()
    print("Current horizontalSizeClass is: \(sizeClassDescription(hSize))")
    print("Current verticalSizeClass is: \(sizeClassDescription(vSize))")
    print("Current userInterfaceIdiom is: \(userInterfaceIdiomDescription(userIdiom()))")
    print("Current displayScale is: \(displayScale())")
    print("Current forceTouchCapability is: \(forceTouchDescription(forceTouch()))")
    
    switch vSize {
    case .Compact:
        switch hSize {
        case .Compact:
            print("wChC - iPhone landscape")
        case .Regular:
            print("wRhC - iPhone 6+ landscape")
        case .Unspecified:
            print("wUhC")
        }   //  end of Compact verticalSizeClass
        
    case .Regular:
        switch hSize {
        case .Compact:
            print("wChR - iPhone, iPhone 6+ portrait")
        case .Regular:
            print("wRhR - iPad portrait, landscape")
        case .Unspecified:
            print("wUhR")
        }   //  end of Regular verticalSizeClass
        
    case .Unspecified:
        switch hSize {
        case .Compact:
            print("wChU")
        case .Regular:
            print("wRhU")
        case .Unspecified:
            print("wUhU")
        }   //  end of Unspecified verticalSizeClass
    }   //  end of switch
}   //  end of func displayTraits()

// ---------------------------------------------------- class TestViewController

class TestViewController: UIViewController {

    //  var horizontalSizeClass: UIUserInterfaceSizeClass { get }
    //  var verticalSizeClass: UIUserInterfaceSizeClass { get }
    //
    //    enum UIUserInterfaceSizeClass : Int {
    //        case Unspecified
    //        case Compact
    //        case Regular
    //  }
    
    //  var displayScale: CGFloat { get }
    //
    //  A value of 1.0 indicates a non-Retina display and a value of 2.0
    //  indicates a Retina display. The default display scale for a trait 
    //  collection is 0.0 (indicating unspecified)
    
    //  var userInterfaceIdiom: UIUserInterfaceIdiom { get } DEPRECIATED
    //
    //    enum UIUserInterfaceIdiom : Int {
    //        case Unspecified
    //        case Phone
    //        case Pad
    //        case TV
    //        case CarPlay
    //    }
    
    //  To create UITraitCollections:
    //
    //  init(traitsFromCollections traitCollections: [UITraitCollection])
    //  init(displayScale scale: CGFloat)
    //  init(userInterfaceIdiom idiom: UIUserInterfaceIdiom)
    //  init(horizontalSizeClass horizontalSizeClass: UIUserInterfaceSizeClass)
    //  init(verticalSizeClass verticalSizeClass: UIUserInterfaceSizeClass)

    //  iPhone Landscape:       Compact Width - Compact Height
    //  iPhone Portrait:        Compact Width - Regular Height
    //  iPhone 6s Landscape:    Regular Width - Compact Height
    //  iPhone 6s Portrait:     Compact Width - Regular Height
    //  iPhone iPad Landscape:  Regular Width - Regular Height
    //  iPhone iPad Portrait:   Regular Width - Regular Height
    
    
    // ------------------- TestViewController: willTransitionToTraitCollection()
    
    override func willTransitionToTraitCollection(newCollection: UITraitCollection,
                                                  withTransitionCoordinator coordinator:
                                        UIViewControllerTransitionCoordinator) {
        
        super.willTransitionToTraitCollection(newCollection,
                                              withTransitionCoordinator: coordinator)
        print("TestViewController: View will Transition To Trait Collection.")
        if self.traitCollection.horizontalSizeClass != newCollection.horizontalSizeClass {
            print("The horizontalSizeClass DID change!")
        }

        if self.traitCollection.verticalSizeClass != newCollection.verticalSizeClass {
            print("The verticalSizeClass DID change!")
        }
        
    }   //  end of func willTransitionToTraitCollection(UITraitCollection,
        //     withTransitionCoordinator: UIViewControllerTransitionCoordinator)
    
    // -------------------------- TestViewController: viewWillTransitionToSize()
    
    override func viewWillTransitionToSize(size: CGSize,
                                        withTransitionCoordinator coordinator:
                                        UIViewControllerTransitionCoordinator) {
        
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        
        print("TestViewController: View Will Transition To Size(\(size)).")
        displayTraits()
    
    }   //  end of func viewWillTransitionToSize (CGSize, withTransitionCoordinator:
        //                                  UIViewControllerTransitionCoordinator)

    // -------------------------- TestViewController: traitCollectionDidChange()
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        
        super.traitCollectionDidChange(previousTraitCollection)
        
        //  if ((self.traitCollection.verticalSizeClass != previousTraitCollection.verticalSizeClass)
        //    || self.traitCollection.horizontalSizeClass != previousTraitCollection.horizontalSizeClass)) {
        // your custom implementation here
        
        print("TestViewController: View Trait Collection Did Change.")
        if previousTraitCollection != nil {
            print("Previous horizontalSizeClass is: \(sizeClassDescription(previousTraitCollection!.horizontalSizeClass))")
            if self.traitCollection.horizontalSizeClass != previousTraitCollection!.horizontalSizeClass {
                print("The horizontalSizeClass DID change!")
            }   // end of if self
            
            print("Previous verticalSizeClass is: \(sizeClassDescription(previousTraitCollection!.verticalSizeClass))")
            if self.traitCollection.verticalSizeClass != previousTraitCollection!.verticalSizeClass {
                print("The verticalSizeClass DID change!")
            }   // end of if self
            
            print("Previous displayScale is: \(previousTraitCollection!.displayScale)")
            if self.traitCollection.displayScale != previousTraitCollection!.displayScale {
                print("The displayScale DID change!")
            }   // end of if self
            
            print("Previous userInterfaceIdiom is: \(userInterfaceIdiomDescription(previousTraitCollection!.userInterfaceIdiom))")
            if self.traitCollection.userInterfaceIdiom != previousTraitCollection!.userInterfaceIdiom {
                print("The userInterfaceIdiom DID change!")
            }   // end of if self
            
            print("Previous forceTouchCapability is: \(forceTouchDescription(previousTraitCollection!.forceTouchCapability))")
            if self.traitCollection.forceTouchCapability != previousTraitCollection!.forceTouchCapability {
                print("The forceTouchCapability DID change!")
            }   // end of if self
        }   //  end of if previousTraitCollection
        
       displayTraits()
     
    }   //  end of func traitCollectionDidChange(UITraitCollection?)
    
    // --------------------------------------- TestViewController: viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("TestViewController: View Did Load")
        viewControllerRef = self
        displayTraits()
    }   //  end of func viewDidLoad()

    // --------------------------- TestViewController: didReceiveMemoryWarning()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("TestViewController: View Did Receive Memory Warning")
        
    }   //  end of func didReceiveMemoryWarning()
    
    // ------------------------------------- TestViewController: viewDidAppear()
    
    override func viewDidAppear(animated: Bool) {
        print("TestViewController: View Did Appear.")
        
    }   //  end of func viewDidAppear(Bool)
    
    // --------------------------------- TestViewController: viewWillDisappear()
    
    override func viewWillDisappear(animated: Bool) {
        print("TestViewController: View Will Disappear.")
    
    }   //  end of func viewWillDisappear(Bool)
    
    // ---------------------------------- TestViewController: viewDidDisappear()
    
    override func viewDidDisappear(animated: Bool) {
        print("TestViewController: View Did Disappear.")
        
    }   //  end of func viewDidDisappear(Bool)
    
    // ---------------------------- TestViewController: viewWillLayoutSubviews()
    
    override func viewWillLayoutSubviews() {
        print("TestViewController: View Will LayoutSubviews.")
        
    }   //  end of func viewWillLayoutSubviews()
    
    // ----------------------------- TestViewController: viewDidLayoutSubviews()
    
    override func viewDidLayoutSubviews() {
        print("TestViewController: View Did Layout Subviews.")
        
    }   //  end of func viewDidLayoutSubviews()
    
    
    // -------------------------------------------------------------------------
    
}  //  end of class TestViewController: UIViewController
