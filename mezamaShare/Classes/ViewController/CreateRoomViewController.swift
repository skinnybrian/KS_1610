//
//  CreateRoomViewController.swift
//  mezamaShare
//
//  Created by Akio Itaya on 2016/10/29.
//  Copyright © 2016年 AkkeyLab. All rights reserved.
//

import UIKit

class CreateRoomViewController: UIView {
    
    @IBOutlet weak var hour: UILabel!
    @IBOutlet weak var minites: UILabel!
    @IBOutlet weak var makeButton: UIButton!
    @IBOutlet weak var inputID: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        makeButton.addTarget(MainViewController(), action: #selector(MainViewController.onMakrRoom(sender:)), for: .touchUpInside)
        inputID.addTarget(MainViewController(), action: #selector(MainViewController.onInputID(sender:)), for: .touchUpInside)
    }
    
    
    
    @IBAction func onHour(_ sender: UIStepper) {
        hour.text = String(Int(sender.value))
    }
    
    
    @IBAction func omMinites(_ sender: UIStepper) {
        minites.text = String(Int(sender.value))
    }
}
