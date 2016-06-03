//
//  ViewController.swift
//  StackView
//
//  Created by Training on 03/06/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showDescription(sender: AnyObject) {
        
        let button = sender as! UIButton
        
        if button.titleLabel?.text == "Show description" {
            button.setTitle("Hide description", forState: .Normal)
            
            UIView.animateWithDuration(0.3, animations: { 
                self.descriptionLabel.hidden = false
            })
            
        }else{
            button.setTitle("Show description", forState: .Normal)
            
            UIView.animateWithDuration(0.3, animations: {
                self.descriptionLabel.hidden = true
            })
            
        }
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

