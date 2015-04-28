//
//  ViewController.swift
//  ClickCounter
//
//  Created by Brendan McDonald on 4/8/15.
//  Copyright (c) 2015 Dangerous Design LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(139, 185, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        //Button
        var button = UIButton()
        button.frame = CGRectMake(224, 185, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.purpleColor(), forState: .Normal)
        
        self.view.addSubview(button)
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }
    
    

}

