//
//  ViewController.swift
//  HOME-3
//
//  Created by Sergey on 24.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Slider
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
    
    }

    
    
    @IBAction func rgbSlider(_ sender: UISlider) {
         setColor()

        switch sender.tag {
            case 0: redLabel.text = string(from: sender)
            case 1: greenLabel.text = string(from: sender)
            case 2: blueLabel.text = string(from: sender)
            default:break
        }
    }
    // color View
    private func setColor () {
    
    colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                        green: CGFloat(greenSlider.value),
                                        blue: CGFloat(blueSlider.value),
                                        alpha: 1)
    
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
                case 0: redLabel.text = string(from: redSlider)
                case 1: greenLabel.text = string(from: greenSlider)
                case 2: blueLabel.text = string(from: blueSlider)
                default: break
            }
        }
    }
    
// value UIColor RGB
    
    private func  string(from slider: UISlider) -> String {
        
        String(format: "%.2f", slider.value)
    }
}

