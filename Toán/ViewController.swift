//
//  ViewController.swift
//  Toán
//
//  Created by Admin on 8/24/16.
//  Copyright © 2016 nguyenhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl_p1: UILabel!
    @IBOutlet weak var lbl_p2: UILabel!
    @IBOutlet weak var t_p1: UIButton!
    @IBOutlet weak var bt_p2: UIButton!
    @IBOutlet weak var bt_p3: UIButton!
    
    
   
   // @IBOutlet weak var bt_timer: UIButton!
   // @IBOutlet weak var lbl_timer: UILabel!
   // var counter = 0
   // var timer = NSTimer()
    
   // @IBAction func action_timer(sender: UIButton) {
    //    timer.invalidate()
     //   timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
   // }
   // @IBAction func stop_action(sender: UIButton) {
   //     timer.invalidate()
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()
           setRandom()
        
    }
    func timerAction(){
        counter += 1
        lbl_timer.text = "\(counter)"
    }
    
    func setRandom(){
        let random1 = Int(arc4random_uniform(4) + 1)
        let random2 = Int(arc4random_uniform(4) + 1)
        print(random1,random2)
        lbl_p1.text = String(random1)
        lbl_p2.text = String(random2)
        setResult(random1, randomB : random2)
    }
    func setResult(randomA: Int, randomB: Int){
        
        t_p1.setTitle(String(randomA), forState: .Normal)
        bt_p2.setTitle(String(randomA), forState: .Normal)
        bt_p3.setTitle(String(sum (randomA, p2:randomB)), forState: .Normal)
    }
    func sum(p1:Int,p2:Int) -> Int{
        return p1+p2;
    }
    @IBAction func bt_action(sender: UIButton) {
        setRandom()
    }
    
    @IBAction func bt_action1(sender: UIButton) {
        setRandom()
    }
    
    @IBAction func bt_action2(sender: UIButton) {
        setRandom()
    }
      }

