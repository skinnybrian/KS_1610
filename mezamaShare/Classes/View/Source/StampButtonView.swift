//
//  StampButtonView.swift
//  mezamaShare
//
//  Created by Akio Itaya on 2016/10/29.
//  Copyright © 2016年 AkkeyLab. All rights reserved.
//

//        bkImage1.image = UIImage(named: "buttonImage1")

import UIKit
import SimpleAnimation

class StampButtonView: UIView {
    
    @IBOutlet weak var bkImage1: UIImageView!
    @IBOutlet weak var bkImage2: UIImageView!
    @IBOutlet weak var bkImage3: UIImageView!
    @IBOutlet weak var bkImage4: UIImageView!
    @IBOutlet weak var bkImage5: UIImageView!
    @IBOutlet weak var bkImage6: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    private let userDefault = UserDefaults.standard
    private var tapCount: Int = 0
    
    
//    let audioPlay = AudioPlay()
    let audioPlay: [AudioPlay] = [AudioPlay(), AudioPlay(), AudioPlay(), AudioPlay(), AudioPlay(), AudioPlay(), AudioPlay(), AudioPlay(), AudioPlay(), AudioPlay()]
    var audioPlayerCount: Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        countLabel.text = "100"
        countLabel.font = UIFont(name: "CometStd-B", size: 30)
        buttonSetup()
        
        userDefault.set(0, forKey: "tapCount")
        self.userDefault.synchronize()
    }
    
    func buttonSetup(){
        bkImage1.layer.cornerRadius = 10
        bkImage2.layer.cornerRadius = 10
        bkImage3.layer.cornerRadius = 10
        bkImage4.layer.cornerRadius = 10
        bkImage5.layer.cornerRadius = 10
        bkImage6.layer.cornerRadius = 10
        
        button1.addTarget(MainViewController(), action: #selector(MainViewController.onTapButton1(sender:)), for: .touchUpInside)
        button2.addTarget(MainViewController(), action: #selector(MainViewController.onTapButton2(sender:)), for: .touchUpInside)
        button3.addTarget(MainViewController(), action: #selector(MainViewController.onTapButton3(sender:)), for: .touchUpInside)
        button4.addTarget(MainViewController(), action: #selector(MainViewController.onTapButton4(sender:)), for: .touchUpInside)
        button5.addTarget(MainViewController(), action: #selector(MainViewController.onTapButton5(sender:)), for: .touchUpInside)
        button6.addTarget(MainViewController(), action: #selector(MainViewController.onTapButton6(sender:)), for: .touchUpInside)
    }
    
    @IBAction func onButton1(_ sender: UIButton) {
        bkImage1.shake(toward: .top, amount: 0.5, duration: 0.5, delay: 0.0)
        count()
    }
    @IBAction func onButton2(_ sender: UIButton) {
        bkImage2.shake(toward: .top, amount: 0.5, duration: 0.5, delay: 0.0)
        count()
    }
    @IBAction func onButton3(_ sender: UIButton) {
        bkImage3.shake(toward: .top, amount: 0.5, duration: 0.5, delay: 0.0)
        count()
    }
    @IBAction func onButton4(_ sender: UIButton) {
        bkImage4.shake(toward: .top, amount: 0.5, duration: 0.5, delay: 0.0)
        count()
    }
    @IBAction func onButton5(_ sender: UIButton) {
        bkImage5.shake(toward: .top, amount: 0.5, duration: 0.5, delay: 0.0)
        count()
    }
    @IBAction func onButton6(_ sender: UIButton) {
        bkImage6.shake(toward: .top, amount: 0.5, duration: 0.5, delay: 0.0)
        
    }
    
    func count() {
        tapCount += 1
        if tapCount > 100 {
            countLabel.text = "0"
        } else {
            countLabel.text = String(100 - tapCount)
        }
        userDefault.set(tapCount, forKey: "tapCount")
        self.userDefault.synchronize()
    }
}
