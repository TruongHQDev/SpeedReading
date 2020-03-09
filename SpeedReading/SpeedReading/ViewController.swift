//
//  ViewController.swift
//  SpeedReading
//
//  Created by AUTO SERVER on 3/9/20.
//  Copyright © 2020 TruongHa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var vwOpenText: UIView!
    @IBOutlet weak var imgOpenText: UIImageView!
    
    @IBOutlet weak var vwOpenCamera: UIView!
    @IBOutlet weak var imgOpenCamera: UIImageView!
    
    @IBOutlet weak var lbMain: UILabel!
    
    @IBOutlet weak var stackSpeed: UIStackView!
    
    
    
    @IBOutlet var vwTextInput: UIView!
    @IBOutlet weak var tvTextInput: UITextView!
    @IBOutlet weak var vwExitTextInput: UIView!
    @IBOutlet weak var imgExitTextInput: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openTextTapped(_ sender: Any) {
        showInput()
    }
    @IBAction func openCameraTapped(_ sender: Any) {
    }
    
    @IBAction func x300Tapped(_ sender: Any) {
    }
    @IBAction func x400Tapped(_ sender: Any) {
    }
    
    @IBAction func x500Tapped(_ sender: Any) {
    }
    
    @IBAction func customSpeedTapped(_ sender: Any) {
    }
    
    
    
    
    
    @IBAction func confirmTextInput(_ sender: Any) {
        vwTextInput.removeFromSuperview()
    }
    
    @IBAction func exitTextInput(_ sender: Any) {
    }
    
    
    func showInput() {
        view.addSubview(vwTextInput)
        vwTextInput.center = self.view.center
    }
    
}

