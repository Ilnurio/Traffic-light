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

    private enum Color {
        case red
        case yellow
        case green
    }
    
    private var color: Color = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeButton.layer.cornerRadius = 10
        redLabel.layer.cornerRadius = 65
        yellowLabel.layer.cornerRadius = 65
        greenLabel.layer.cornerRadius = 65
        
    }
    
    @IBAction func changeColorButton() {
        changeButton.setTitle("NEXT", for: .normal)
        
        switch color {
        case .red:
            redLabel.alpha = 1
            greenLabel.alpha = 0.3
            color = .yellow
        case .yellow:
            redLabel.alpha = 0.3
            yellowLabel.alpha = 1
            color = .green
        case .green:
            yellowLabel.alpha = 0.3
            greenLabel.alpha = 1
            color = .red
        }
    }
}

