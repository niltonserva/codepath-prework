//
//  ViewController.swift
//  Prework
//
//  Created by Nilton Serva on 8/25/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet var Background: UIView!
    @IBOutlet weak var SubmittedTextLabel: UITextField!
    var buttonHasNoText: Bool = true
    
    @IBAction func ButtonClicked(_ sender: Any) {
        print("hello")
        TextLabel.textColor = UIColor.orange
    }
    
    @IBAction func ButtonClicked2(_ sender: Any) {
        Background.backgroundColor = UIColor.red
    }
    
    @IBAction func ButtonClicked3(_ sender: Any) {
        TextLabel.text = "Goodbye 👋🏽"
    }
    
    @IBAction func ButtonClicked4(_ sender: Any) {
        if buttonHasNoText {
            TextLabel.text = SubmittedTextLabel.text
            buttonHasNoText = false
            self.view.endEditing(true)
        } else {
            TextLabel.text = "Hello 😄"
            buttonHasNoText = true
            self.view.endEditing(true)
        }
    }
    
    @IBAction func BackgroundClicked(_ sender: Any) {
        TextLabel.text = "Hello 😄"
        TextLabel.textColor = UIColor.black
        SubmittedTextLabel.text = ""
        Background.backgroundColor = UIColor.systemBlue
    }
    
    
}

