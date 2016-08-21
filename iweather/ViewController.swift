//
//  ViewController.swift
//  iweather
//
//  Created by Admin on 8/11/16.
//  Copyright © 2016 nguyenhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIGestureRecognizerDelegate {

    @IBOutlet weak var temp: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var quote: UILabel!
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var lblTempFomat: UILabel!
    
    
    var quotes = ["Ai rồi cũng sẽ khác","Mọi suy nghĩ đề đơn giản nếu bạn là một người điên","Hãy theo đuổi đam mê, thành công sẽ theo đuổi bạn"]
    var citys = ["Thái Bình","Hà Nội", "Sài Gòn"]
    var backgrounds = ["Moon","Sun","Blood"]
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        temp.userInteractionEnabled = true // Remember to do this
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: #selector(didTapLabelDemo))
        temp.addGestureRecognizer(tap)
        tap.delegate = self
    }
    func didTapLabelDemo(sender: UITapGestureRecognizer)
    {
        if(lblTempFomat.text == "C"){
            let WageConversion = (temp.text! as NSString).doubleValue + 30
            //print(WageConversion)
            
            let nf = NSNumberFormatter()
            nf.numberStyle = .DecimalStyle
            let s2 = nf.stringFromNumber(WageConversion)
            temp.text = s2
            lblTempFomat.text = "F"
        }else{
            let WageConversion = (temp.text! as NSString).doubleValue - 30
            //print(WageConversion)
            
            let nf = NSNumberFormatter()
            nf.numberStyle = .DecimalStyle
            let s2 = nf.stringFromNumber(WageConversion)
            temp.text = s2
            lblTempFomat.text = "C"
        }
        
        
        
        
        
    }
    @IBOutlet weak var random: UIButton!
    
    @IBAction func random(sender: AnyObject) {
        let CityIndex = Int(arc4random_uniform(UInt32(citys.count)))
        city.text = citys[CityIndex]
        let quoteIndex = Int(arc4random_uniform(UInt32(quotes.count)))
        quote.text = quotes[quoteIndex]
        let imageIndex = Int(arc4random_uniform(UInt32(backgrounds.count)))
        backGround.image = UIImage.init(named : backgrounds[imageIndex])
        getTemp()
    }
    
        func getTemp() -> Void{
            let randomNumber = String(format:"%2.1f", tempRandom() )
            temp.text = randomNumber
        }
    
        func tempRandom() -> Double{
        return Double(arc4random_uniform(18) + 14) + Double(arc4random()) / Double(INT32_MAX)
    }
        
    }

