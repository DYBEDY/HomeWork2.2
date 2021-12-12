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
        
        sliderAction()
        maxTintColor()
        minTintColor()
    }

    @IBAction func sliderAction() {
        textLabels()
        
        resultOfSettingsView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value / 255),
            green: CGFloat(greenSlider.value / 255),
            blue: CGFloat(blueSlider.value / 255), alpha: 1)
        
        }
    
    //MARK: - Private methods
    
    private func textLabels() {
        redValueLabel.text = String(redSlider.value.rounded(.toNearestOrEven))
        greenValueLabel.text = String(greenSlider.value.rounded(.toNearestOrEven))
        blueValueLabel.text = String(blueSlider.value.rounded(.toNearestOrEven))
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

