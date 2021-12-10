//
//  ViewController.swift
//  HomeWork2.2
//
//  Created by Roman on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var resultOfSettingsView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    private let maximumSlidersValue: Float = 100
    private let minimumSlidersValue: Float = 1
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultOfSettingsView.layer.cornerRadius = 10
        
        redSlider.minimumValue = minimumSlidersValue
        greenSlider.minimumValue = minimumSlidersValue
        blueSlider.minimumValue = minimumSlidersValue
        
        redSlider.maximumValue = maximumSlidersValue
        greenSlider.maximumValue = maximumSlidersValue
        blueSlider.maximumValue = maximumSlidersValue
        
        redSlider.value = Float.random(in: 1...100)
        greenSlider.value = Float.random(in: 1...100)
        blueSlider.value = Float.random(in: 1...100)
        
        redValueLabel.text = String(Int(redSlider.value))
        greenValueLabel.text = String(Int(greenSlider.value))
        blueValueLabel.text = String(Int(blueSlider.value))
        
        redSlider.maximumTrackTintColor = .red
        greenSlider.maximumTrackTintColor = .green
        blueSlider.maximumTrackTintColor = .blue
        
        

    
    }

    @IBAction func redSliderAction() {
        redValueLabel.text = String(Int(redSlider.value))
    }
    
    
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(Int(greenSlider.value))
    }
    
    
    
    @IBAction func blueSliferAction() {
        blueValueLabel.text = String(Int(blueSlider.value))
    }
    
}

