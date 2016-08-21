//
//  ViewController.swift
//  zingmp3
//
//  Created by Admin on 8/11/16.
//  Copyright © 2016 nguyenhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var text: UILabel!
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        logo!.alpha = 1
        text!.alpha = 1
    }
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
        UIView.animateWithDuration(4, animations: {
            self.logo!.alpha = 1
        }) {
            (finished) in
            UIView.animateWithDuration(3, animations: {
                self.text!.center = CGPointMake(self.logo!.center.x,100)})
        }
    }
}
