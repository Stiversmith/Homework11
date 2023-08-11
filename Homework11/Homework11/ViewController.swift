//
//  ViewController.swift
//  Homework11
//
//  Created by Aliaksandr Yashchuk on 8/9/23.
//

import UIKit

final class ViewController: UIViewController {
    
    
    @IBOutlet private weak var mainLabel: UILabel!
    @IBOutlet private weak var volumeLevel: UILabel!
    @IBOutlet private weak var volumeLevelSlider1: UIProgressView!
    @IBOutlet private weak var volumeLevelSlider2: UISlider!
    @IBOutlet private weak var volumeLevelField: UITextField!
    @IBOutlet private weak var timePicker: UIDatePicker!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var switchOn: UISwitch!
    @IBOutlet private weak var clearButton: UIButton!
    @IBOutlet private weak var setThisTime: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func incDecVolume(_ sender: UISlider) {
        
        let volumeIncr = volumeLevelSlider2.value
        volumeLevelSlider1.progress = volumeIncr
        volumeLevelField.text = String(format: "%.1f", volumeIncr)
    }
    
    
    @IBAction func insertVolumeLevel(_ sender: UITextField) {
        
        if let floatCheck = volumeLevelField.text, let insertFloatLevel = Float(floatCheck) {
            volumeLevelSlider2.value = insertFloatLevel
            volumeLevelSlider1.progress = insertFloatLevel
        } else {
            print ("Hey man! What are you doing?")
        }
    }
    
    @IBAction func setThisTime(_ sender: UIButton) {
        let formDate = DateFormatter()
        formDate.timeStyle = .short
        let selectTime = timePicker.date
        let formTime = formDate.string(from: selectTime)
        timeLabel.text = "\(formTime)"
    }
    
    @IBAction func switchOn(_ sender: UISwitch) {
        timeLabel.textColor = switchOn.isOn ? .white : .black
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        switchOn.setOn(false, animated: true)
        timeLabel.textColor = UIColor.black
    }
}
    
    
    
    
    
    


