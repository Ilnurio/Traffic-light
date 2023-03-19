//
//  ViewController.swift
//  Traffic light
//
//  Created by Ilnur on 17.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
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
        changeButton.setTitle("NEXT", for: .normal)
        
        if redLabel.alpha == 0.5 {
            redLabel.alpha = 1
        } else if redLabel.alpha == 1 {
            redLabel.alpha = 0.3
            yellowLabel.alpha = 1
        } else if yellowLabel.alpha == 1 {
            yellowLabel.alpha = 0.3
            greenLabel.alpha = 1
        } else if greenLabel.alpha == 1 {
            greenLabel.alpha = 0.3
            redLabel.alpha = 1
        }
    }
}

