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
    var Questions = ["Have No Air Conditioning in the Middle of Summer", "Have No Heat in the Middle of Winter", "Lose Your Dominant Arm and Get an Extra Leg", "Lose Your Dominant Leg and Get an Extra Arm", "Fight Yourself on Bathsalts", "Fight Two of Your Regular Selfs", "Die In a Strange Way", "Slowly Drag the Palm of Your Hand Across a Hot Stove","Quickly Swipe the Palm of Your Hand Across a Lightly Splintered Wooden Plank", "Drag Your EyeBall Across Any Surface Before You Touch It", "Have a Small Insect, that You Can Never Kill or Pinpoint, Crawling Under Your Scalp For the Rest of Your Life", "Always Have Sticky Hands", "Always have Greasy Hands", "Always Have To Drink Watered Down Soda", "Always Have to Drink Flat Diet Soda", "Have Your Parents Find Out Every Drug You Have Ever Done", "Crawl Everywhere for the Rest of Your Life", "Have Baby Sized Hands", "Only be able to Whisper for the Rest of Your Life", "Lose All Your Fingers", "Lose all Your Toes"]
    //21,
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.TopQuestion.text = Questions[Int(arc4random_uniform(21))]
        self.BottomQuestion.text = Questions[Int(arc4random_uniform(21))]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func NextTapped(sender: UIButton) {
        self.TopQuestion.text = Questions[Int(arc4random_uniform(21))]
        self.BottomQuestion.text = Questions[Int(arc4random_uniform(21))]
    }
    @IBAction func TopQuestionTapped(sender: UIButton) {
        self.TopQuestion.text = Questions[Int(arc4random_uniform(21))]
        self.BottomQuestion.text = Questions[Int(arc4random_uniform(21))]
    }
    @IBAction func BottomQuestionTapped(sender: UIButton) {
        self.TopQuestion.text = Questions[Int(arc4random_uniform(21))]
        self.BottomQuestion.text = Questions[Int(arc4random_uniform(21))]
    }
}

