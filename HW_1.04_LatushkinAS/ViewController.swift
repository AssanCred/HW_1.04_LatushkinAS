//
//  ViewController.swift
//  HW_1.04_LatushkinAS
//
//  Created by Артём Латушкин on 07.02.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    // MARK: Life Cycles Methods
    override func viewWillLayoutSubviews() {
        colorView.layer.cornerRadius = colorView.frame.width / 20
    }
    
    // MARK: IB Actions
    @IBAction func actionSlider() {
        redLabel.text = String(format:"%.2f", redSlider.value)
        greenLabel.text = String(format:"%.2f", greenSlider.value)
        blueLabel.text = String(format:"%.2f", blueSlider.value)
        updateColor()
    }
    
    // MARK: Private Method
    private func updateColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}
