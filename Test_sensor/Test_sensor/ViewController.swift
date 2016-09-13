//
//  ViewController.swift
//  Test_sensor
//
//  Created by Admin on 9/12/16.
//  Copyright © 2016 nguyenhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rollLabel: UILabel!
    @IBOutlet weak var pinchLable: UILabel!
    @IBOutlet weak var yawLabel: UILabel!
    
    @IBOutlet var accX: [UILabel]!
    @IBOutlet var accY: [UILabel]!
    
    
    @IBOutlet weak var maxAccX: UILabel!
    @IBOutlet weak var maxAccy: UILabel!
    @IBOutlet weak var maxAccz: UILabel!
    
    @IBOutlet weak var rotX: UILabel!
    @IBOutlet weak var rotY: UILabel!
    @IBOutlet weak var rotZ: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

