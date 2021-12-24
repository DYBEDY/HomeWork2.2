//
//  ViewController.swift
//  HomeWork2.2
//
//  Created by Roman on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var resultOfSettingsView: UIView!
    
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultOfSettingsView.layer.cornerRadius = 30
        
        maxValuesOfSliders()
        
        redSlider.value = 255
        greenSlider.value = 19
        blueSlider.value = 10
        
        
        maxTintColor()
        minTintColor()
        
        setColor()
        setValue(for: redValueLabel, greenValueLabel, blueValueLabel)
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        
        switch sender {
        case redSlider: setValue(for: redValueLabel)
        case greenSlider: setValue(for: greenValueLabel)
        default: setValue(for: blueValueLabel)
        }
       
        }
    
    //MARK: - Private methods
    
    private func setColor() {
        resultOfSettingsView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value / 255),
            green: CGFloat(greenSlider.value / 255),
            blue: CGFloat(blueSlider.value / 255), alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redValueLabel:
                label.text = string(from: redSlider )
            case greenValueLabel:
                label.text = string(from: greenSlider)
            default:
                label.text = string(from: blueSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.0f", slider.value )
    }
    
    private func maxValuesOfSliders() {
        redSlider.maximumValue = 255
        greenSlider.maximumValue = 255
        blueSlider.maximumValue = 255
    }
    
    private func maxTintColor() {
        redSlider.maximumTrackTintColor = .white
        greenSlider.maximumTrackTintColor = .white
        blueSlider.maximumTrackTintColor = .white
    }
    
    private func minTintColor() {
        redSlider.minimumTrackTintColor = . red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
}

