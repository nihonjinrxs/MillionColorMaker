//
//  ViewController.swift
//  Million Color Maker
//
//  Created by Ryan Harvey on 6/16/15.
//  Copyright © 2015 datascientist.guru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var sliderContainerView: UIView!
    @IBOutlet weak var colorDisplayView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        updateColorDisplay(redSlider)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateColorDisplay(sender: UISlider) {
        let r: CGFloat = CGFloat(redSlider.value)
        let g: CGFloat = CGFloat(greenSlider.value)
        let b: CGFloat = CGFloat(blueSlider.value)
        
        let k: CGFloat = 0.8 - (0.6 * (r + g + b)/3.0)
        
        colorDisplayView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        sliderContainerView.backgroundColor = UIColor(red: k, green: k, blue: k, alpha: 1)
    }

}

