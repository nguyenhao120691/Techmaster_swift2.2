//
//  ViewController.swift
//  Toan_tre_
//
//  Created by Admin on 9/7/16.
//  Copyright © 2016 nguyenhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl_p1: UILabel!
    @IBOutlet weak var lbl_p2: UILabel!
    
    
    @IBOutlet weak var lbl_True: UILabel!
    
    
    
    @IBOutlet weak var bt_p1: UIButton!
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
    //func timerAction(){
    //    counter += 1
    //    lbl_timer.text = "\(counter)"
    //}
    // Do cảm thấy app làm cho trẻ em mà lại đếm thời gian thi k hay lên chỉ làm để đó.
    
    func setRandom(){
        let random1 = Int(arc4random_uniform(4) + 1)
        let random2 = Int(arc4random_uniform(4) + 1)
        
        lbl_p1.text = String(random1)
        lbl_p2.text = String(random2)
        setResult(random1, randomB : random2)
    }
    func setResult(randomA: Int, randomB: Int){
        
        

        let random = arc4random_uniform(3) + 1

        //print(random)
        
        if(random == 1 ){
            bt_p3.setTitle(String(sum(randomA, p2:randomB)+1), forState: .Normal)
            bt_p2.setTitle(String(sum(randomA, p2:randomB)-1), forState: .Normal)
            bt_p1.setTitle(String(sum(randomA, p2:randomB)), forState: .Normal)
        } else if(random == 2){
            bt_p3.setTitle(String(sum(randomA, p2:randomB)-1), forState: .Normal)
            bt_p1.setTitle(String(sum(randomA, p2:randomB)+1), forState: .Normal)
            bt_p2.setTitle(String(sum(randomA, p2:randomB)), forState: .Normal)
        } else if(random == 3){
            bt_p1.setTitle(String(sum(randomA, p2:randomB)+2), forState: .Normal)
            bt_p2.setTitle(String(sum(randomA, p2:randomB)-1), forState: .Normal)
            bt_p3.setTitle(String(sum(randomA, p2:randomB)), forState: .Normal)
        }
        
      
   
    
    }
    
    func sum(p1:Int,p2:Int) -> Int{
        return p1+p2;
    }
    
    @IBAction func bt_action(sender: AnyObject) {
     
         //   let a:Int? = Int(lbl_p1.text!)
         //   let b:Int? = Int(lbl_p2.text!)
          //  let c:Int? = a!+b!
          //  print(c)
        
        setRandom()
        
              }
    }



       