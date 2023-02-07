//
//  ViewController.swift
//  HW_1.04_LatushkinAS
//
//  Created by Артём Латушкин on 07.02.2023.
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
    }
    
    @IBAction func actionRedSlider() {
        redLabel.text = String(format:"%.2f", redSlider.value)
        updateColor()
    }
   
    @IBAction func actionGreenSlider() {
        greenLabel.text = String(format:"%.2f", greenSlider.value)
        updateColor()
    }
    
    @IBAction func actionBlueSlider() {
        blueLabel.text = String(format:"%.2f", blueSlider.value)
        updateColor()
    }
    
    private func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSlider.value > 0 {
            red = CGFloat(redSlider.value)
        }
        if greenSlider.value > 0 {
            green = CGFloat(greenSlider.value)
        }
        if blueSlider.value > 0 {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }

}

