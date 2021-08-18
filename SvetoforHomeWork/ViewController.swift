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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        redView.layer.cornerRadius = redView.frame.width / 2
        
        yellowView.alpha = 0.3
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        
        greenView.alpha = 0.3
        greenView.layer.cornerRadius = greenView.frame.width / 2
        
        startButton.layer.cornerRadius = 10
        startButton.setTitle("START", for: .normal)
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        
        if redView.alpha == yellowView.alpha && redView.alpha == greenView.alpha{
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        } else if redView.alpha > yellowView.alpha {
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
        } else if yellowView.alpha > greenView.alpha {
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else {
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        }
    }
}

