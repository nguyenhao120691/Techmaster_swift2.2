//
//  ViewController.swift
//  Popoverview
//
//  Created by Admin on 8/28/16.
//  Copyright © 2016 nguyenhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        if (segue.identifier == "showView"){
            let controller = segue.destinationViewController
        controller.popoverPresentationController?.delegate = self
            controller.preferredContentSize = CGSize(width: 220, height: 30)
        }
        
    }

    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
        }
    
        
}

