//
//  PopoverViewViewController.swift
//  Popoverview
//
//  Created by Admin on 9/1/16.
//  Copyright © 2016 nguyenhao. All rights reserved.
//

import UIKit

class PopoverViewViewController: UIViewController {
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func action_like(sender: AnyObject) {
        if(sender.tag == 100){
            print("Like")
        }
        if(sender.tag == 101){
            print("Love")
        }
        if(sender.tag == 102){
            print("Cry")
        }
        if(sender.tag == 103){
            print("Wow")
        }
        if(sender.tag == 104){
            print("Angry")
        }
        if(sender.tag == 105){
            print("Haha")
        }
    }
  
}
