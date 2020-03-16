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
    
    
    //start
    @IBOutlet weak var vwStart: UIView!
    @IBOutlet weak var imgStart: UIImageView!
    
    
    
    
    var str = "Hồng trần trên đôi cánh tay Họa đời em trong phút giây Từ ngày thơ ấy còn ngủ mơ đến khi em thờ ơ Lòng người anh đâu có hay Một ngày khi vỗ cánh bay Từ người yêu hóa thành người dưng đến khi ta tự xưng à Thương em bờ vai nhỏ nhoi Đôi mắt hóa mây đêm Thương sao mùi dạ lý hương Vương vấn mãi bên thềm Đời phiêu du cố tìm một người thật lòng Dẫu trời mênh mông anh nhớ em"
    var fullArr: [String] = []
    var timer = Timer()
    var item = -1
    
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
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @IBAction func x400Tapped(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.15, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
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
    
    @IBAction func start(_ sender: Any) {
//        DispatchQueue.main.sync {
        let x = tvTextInput.text!
        fullArr = x.components(separatedBy: " ")
//        print(fullArr)
        x300Tapped("")
        
    }
    
    func showInput() {
        view.addSubview(vwTextInput)
        vwTextInput.center = self.view.center
    }
    
    @objc func updateTime() {
        item += 1
        if item < fullArr.count {
            lbMain.text = fullArr[item]
        } else {
            timer.invalidate()
        }
        
    }
    
}

