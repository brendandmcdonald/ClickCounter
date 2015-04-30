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
    var secondLabel:UILabel!
    var backgroundColor:UIColor!
    var backgroundColorOptions = [UIColor.yellowColor(), UIColor.redColor(), UIColor.whiteColor(), UIColor(red: 212, green: 189, blue: 250, alpha: 0.9)]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(120, 120, 60, 60)
        label.text = "0"
        label.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(label)
        self.label = label
        
        
        //Second Label
        var secondLabel = UILabel()
        secondLabel.frame = CGRectMake(120, 240, 60, 60)
        secondLabel.text = "0"
        secondLabel.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(secondLabel)
        self.secondLabel = secondLabel
        
        //Increment Button
        var button = UIButton()
        button.frame = CGRectMake(200, 360, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.greenColor(), forState: .Normal)
        button.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(button)
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Decrement Button
        var decrementButton = UIButton()
        decrementButton.frame = CGRectMake(200, 460, 100, 60)
        decrementButton.setTitle("Decrement", forState: .Normal)
        decrementButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        decrementButton.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
        randomlyChangeBackgroundColor()
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
        randomlyChangeBackgroundColor()
    }
    
    func randomlyChangeBackgroundColor(){
        
        var backgroundColorOptions = [UIColor.yellowColor(), UIColor.redColor(), UIColor.whiteColor(), UIColor(red: 212/255, green: 189/255, blue: 250/255, alpha: 0.9)]
        var randomBackground = Int(arc4random_uniform(UInt32(backgroundColorOptions.count)))
        var nextBackground = backgroundColorOptions[randomBackground]
        self.view.backgroundColor = nextBackground
    }

}

