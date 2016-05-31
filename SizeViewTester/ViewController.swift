//
//  TestViewController.swift
//  SizeViewTester
//
//  Created by Robert Brost on 05/31/16.
//  Copyright © 2016 RFBrost. All rights reserved.
//

import UIKit

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

        
    }   //  end of willTransitionToTraitCollection(UITraitCollection,
        //     withTransitionCoordinator: UIViewControllerTransitionCoordinator)
    
    // -------------------------- TestViewController: viewWillTransitionToSize()
    
    override func viewWillTransitionToSize(size: CGSize,
                                        withTransitionCoordinator coordinator:
                                        UIViewControllerTransitionCoordinator) {
        
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        print("TestViewController: View Will Transition To Size.")
    
    }   //  end of viewWillTransitionToSize (CGSize, withTransitionCoordinator:
        //                                  UIViewControllerTransitionCoordinator)

    // -------------------------- TestViewController: traitCollectionDidChange()
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        
        super.traitCollectionDidChange(previousTraitCollection)
        
        //  if ((self.traitCollection.verticalSizeClass != previousTraitCollection.verticalSizeClass)
        //    || self.traitCollection.horizontalSizeClass != previousTraitCollection.horizontalSizeClass)) {
        // your custom implementation here
        print("TestViewController: View Trait Collection Did Change.")
        
    }   //  end of func traitCollectionDidChange(UITraitCollection?)
    
    // --------------------------------------- TestViewController: viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("TestViewController: View Did Load")
        
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
