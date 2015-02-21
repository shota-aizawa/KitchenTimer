//
//  ViewController.swift
//  Kitchen Timer
//
//  Created by 相澤渉太 on 2015/02/21.
//  Copyright (c) 2015年 Shota Aizawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myTime = NSTimer()
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBOutlet weak var myProgressView: UIProgressView!
    
    
    
    @IBAction func myButtonPressed(sender: UIButton) {
        myTime = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("myFunction"), userInfo: nil, repeats: true)
    
    }
    
    
    
    @IBAction func stopButton(sender: UIButton) {
        println("Stop TImer")
        myTime.invalidate()
    }
    
    func myFunction () {
    
        myProgressView.progress = myProgressView.progress - 0.01
        myLabel.text = "Progress: \(myProgressView.progress)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = "600"
        myProgressView.progress = 600
        myLabel.text = "Progress: \(myProgressView.progress)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

