//
//  OtherViewController.swift
//  instruments001
//
//  Created by pair on 2/2/17.
//  Copyright © 2017 pair. All rights reserved.
//

import Foundation

import UIKit

class OtherViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var textView: UITextView!
    
    var data: NSData?
 
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        textView.delegate = self
        
        let filePath = Bundle.main.path(forResource: "Test", ofType: "txt");
        
        let returnData = NSData(contentsOfFile: filePath!) as! Data
        
        let returnString = NSString(data: returnData, encoding: String.Encoding.utf8.rawValue)
        
        textView.text = String(describing: returnString)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        
        self.view.removeFromSuperview()
    }
}





















