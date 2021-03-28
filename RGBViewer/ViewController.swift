//
//  ViewController.swift
//  RGBViewer
//
//  Created by Yakov on 27.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLableText: UILabel!
    @IBOutlet weak var greenLableText: UILabel!
    @IBOutlet weak var blueLableTexr: UILabel!
    
    @IBOutlet weak var redColorNameLable: UILabel!
    @IBOutlet weak var greenColorNameLable: UILabel!
    @IBOutlet weak var blueColorNameLable: UILabel!
    
    @IBOutlet weak var colorViewer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorViewer.layer.cornerRadius = 15
        
        setColorNames()
        setSliderValue()
        setTintColor()
        setminimumValue()
        setLableText()
        mixColorForView()
        
        }
    
    private func setColorNames() {
        redColorNameLable.text = "Red: "
        greenColorNameLable.text = "Green: "
        blueColorNameLable.text = "Blue: "
    }
    
    private func setSliderValue() {
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
    }
    
    private func setTintColor() {
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
    }
    
    private func setminimumValue() {
        redSlider.minimumValue = 0
        greenSlider.minimumValue = 0
        blueSlider.minimumValue = 0
    }
    
    private func setMaximumValue() {
        redSlider.maximumValue = 1
        greenSlider.maximumValue = 1
        blueSlider.maximumValue = 1
    }
    
    private func setLableText() {
        
        redLableText.text = roundvalue(for: redSlider.value)
        greenLableText.text = roundvalue(for: greenSlider.value)
        blueLableTexr.text = roundvalue(for: blueSlider.value)
    
    }
    
    @IBAction func redSegmentedAction() {
        
        redLableText.text = roundvalue(for: redSlider.value)
        mixColorForView()
    }
    
    @IBAction func greenSegmentedAction() {
        
        greenLableText.text = roundvalue(for: greenSlider.value)
        mixColorForView()
    }
    
    @IBAction func blueSegmentedAction() {
        
        blueLableTexr.text = roundvalue(for: blueSlider.value)
        mixColorForView()
    }
    
    private func roundvalue(for value :Float) -> String {
        String(format: "%.2f", value)
    }
    
    private func mixColorForView() {
        colorViewer.backgroundColor = UIColor(red: CGFloat(Float(redSlider.value)), green: CGFloat(Float(greenSlider.value)), blue: CGFloat(Float(blueSlider.value)), alpha: 1.0)
        
    }
    
}

