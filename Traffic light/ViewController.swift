//
//  ViewController.swift
//  Traffic light
//
//  Created by Ilnur on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabel: UIView!
    @IBOutlet weak var yellowLabel: UIView!
    @IBOutlet weak var greenLabel: UIView!
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeButton.layer.cornerRadius = 10
        redLabel.layer.cornerRadius = 65
        yellowLabel.layer.cornerRadius = 65
        greenLabel.layer.cornerRadius = 65
    }

    
    @IBAction func changeColorButton() {
//        changeButton.setTitle("NEXT", for: .normal)
//        redLabel.alpha = 1
//        if yellowLabel.alpha == 0.3 {
//            redLabel.alpha = 0
//            yellowLabel.alpha = 1
//        } else {
//            redLabel.alpha = 0.3
//            yellowLabel.alpha = 0.3
//            greenLabel.alpha = 1
//        }
    }
}

