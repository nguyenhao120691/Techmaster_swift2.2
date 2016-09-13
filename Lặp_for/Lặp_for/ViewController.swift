//
//  ViewController.swift
//  Lặp_for
//0)
//  Created by Admin on 9/13/16.
//  Copyright © 2016 nguyenhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tf_nhap: UITextField!
    
    var n = 0;
    
    
    
    var margin: CGFloat = 40;
    var cot: CGFloat = 100;
    override func viewDidLoad() {
        super.viewDidLoad()
        
    setBall()
    }
    
    
        func setBall(){
        for indexhang in 0..<n {
            for indexcot in 0..<n{
                let image = UIImage(named: "green")
                let ball = UIImageView(image : image)
                ball.center = CGPointMake(margin + CGFloat(indexhang) * setSpaceBetween(),CGFloat(indexcot) * setcot() + cot)
                self.view.addSubview(ball)

                }
           
                   }
    }
        func setSpaceBetween() ->CGFloat{
            let space = (self.view.bounds.size.width - 2 * margin)/CGFloat(n-1)
            return space
            
        }
    func setcot() ->CGFloat{
    let spaceCot = (self.view.bounds.size.height - 2 * cot )/CGFloat(n-1)
        return spaceCot
    }
    @IBAction func bt_draw(sender: AnyObject) {
        n = Int(tf_nhap.text!)!
        setBall()
        
        
        
    }
    
}


