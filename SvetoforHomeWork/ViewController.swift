//
//  ViewController.swift
//  SvetoforHomeWork
//
//  Created by Александр on 17.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    let lightOff = CGFloat(0.3)
    let lightOn = CGFloat(1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = lightOff
        redView.layer.cornerRadius = redView.frame.width / 2
        
        yellowView.alpha = lightOff
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        
        greenView.alpha = lightOff
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        
        if redView.alpha == yellowView.alpha && redView.alpha == greenView.alpha {
            redView.alpha = lightOn
            yellowView.alpha = lightOff
            greenView.alpha = lightOff
        } else if redView.alpha > yellowView.alpha {
            redView.alpha = lightOff
            yellowView.alpha = lightOn
            greenView.alpha = lightOff
        } else if yellowView.alpha > greenView.alpha {
            redView.alpha = lightOff
            yellowView.alpha = lightOff
            greenView.alpha = lightOn
        } else {
            redView.alpha = lightOn
            yellowView.alpha = lightOff
            greenView.alpha = lightOff
        }
    }
}

