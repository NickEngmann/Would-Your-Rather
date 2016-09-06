	//
//  ViewController.swift
//  WYR
//
//  Created by NickySlicks on 9/5/16.
//  Copyright (c) 2016 QuodCertamine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TopQuestion: UILabel!
    @IBOutlet weak var BottomQuestion: UILabel!
    @IBOutlet weak var NextButton: UIButton!
    var Questions = ["Have No Air Conditioning in the Middle of Summer", "Have No Heat in the Middle of Winter", "Lose Your Dominant Arm and Get an Extra Leg", "Lose Your Dominant Leg and Get an Extra Arm", "Fight Yourself on Bathsalts", "Fight Two of Your Regular Selfs", "Die In a Strange Way", "Die In a Midly Heroic Way"]
    //8
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.TopQuestion.text = Questions[Int(arc4random_uniform(8))]
        self.BottomQuestion.text = Questions[Int(arc4random_uniform(8))]
        self.NextButton.addTarget(self, action: "buttonClicked",  forControlEvents: .TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func buttonClicked(_ sender: AnyObject?) {
            self.TopQuestion.text = Questions[Int(arc4random_uniform(8))]
            self.BottomQuestion.text = Questions[Int(arc4random_uniform(8))]
    }
}

