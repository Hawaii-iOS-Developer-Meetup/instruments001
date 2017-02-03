//
//  ViewController.swift
//  instruments001
//
//  Created by pair on 2/2/17.
//  Copyright © 2017 pair. All rights reserved.
//

import UIKit

/*
 
 USING INSTRUMENTS

 Strong and weak references
 
 Strong references indicate ownership
   You own it or create it
 Weak indicates association
   Just need to communicate with something that has already been created
 
 Command + i to run Instruments
   Starts in profiler
 
 Set profiler to debug mode:
     Manage schemes for target
     double clcik on your scheme
     go to profile
     change build configuration that is used when profiler runs
       debug (typically run in simulator)
       release (not available in release mode. Debug using debug mode, has additional debug info)
    
Run on device gives up more features to debug against
 
 Start app by hitting record buton
 Change one setting on right hand side, left most tabe
 Check box to "Record reference counts"
 
 
 Pause instruments and inspect values you got
 
 Click on the call tree view
   click on statistics
     select call tree view
     shows memory usage based on lines of code
       expand call tree to find the part of code using the most memory
         This is most likely the one that is leaking memory
   ignore all system calls
     select middle panel from right pane in instruemnts
     select hide system libraries
 
   double click on the line to go directly to the code that is causing the leak
 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

    }
    
    @IBAction func showOtherViewController(_ sender: Any) {
        
        let popOverViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "otherViewControllerID") as! OtherViewController
        
        self.addChildViewController(popOverViewController)
        
        popOverViewController.view.frame = self.view.frame
        
        self.view.addSubview(popOverViewController.view)
        
        popOverViewController.didMove(toParentViewController: self)
    }
}





















