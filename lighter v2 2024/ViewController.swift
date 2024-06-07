//
//  ViewController.swift
//  lighter v2 2024
//
//  Created by Marat Fakhrizhanov on 30.05.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet var startButtonText: UIButton!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var yellowView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = redView.frame.size.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        greenView.layer.cornerRadius = greenView.frame.size.width / 2

        redView.alpha = 0.5
        yellowView.alpha = 0.5
        greenView.alpha = 0.5
        startButtonText.setTitle("START", for: .normal)
    }

    enum ColorsOfLighter {
                case red
                case yellow
                case green
        case allColorOff
            }
    
    var lightOn: ColorsOfLighter = .red
    
    @IBAction func startButtonPressed() {
        
        switch lightOn {
            
        case .red:
            redView.alpha = 1
            lightOn = .yellow
            startButtonText.setTitle("Next", for: .normal)
        case .yellow:
            redView.alpha = 0.5
            yellowView.alpha = 1
            lightOn = .green
        case .green:
            yellowView.alpha = 0.5
            greenView.alpha = 1
            lightOn = .allColorOff
            startButtonText.setTitle("STOPPP", for: .normal)
        case .allColorOff:
            greenView.alpha = 0.5
            startButtonText.setTitle("StArT", for: .normal)
            lightOn = .red
        }
    }
    
}

