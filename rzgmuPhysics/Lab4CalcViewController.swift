//
//  Lab4CalcViewController.swift
//  rzgmuPhysics
//
//  Created by Олег Плаксин on 16.01.2022.
//

import UIKit

class Lab4CalcViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var Pi: UITextField!
    @IBOutlet weak var n0: UITextField!
    @IBOutlet weak var ni: UITextField!
    @IBOutlet weak var P0: UITextField!
    @IBOutlet weak var C0: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.Pi.delegate = self
        self.n0.delegate = self
        self.ni.delegate = self
        self.P0.delegate = self
        self.C0.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    @IBAction func pushStart(_ sender: UIButton) {
        var result:Double = (Double(Pi.text!)!*Double(n0.text!)!*Double(C0.text!)!)/(Double(ni.text!)!*Double(P0.text!)!)
        if (result>5 && result<10){
            resultLabel.textColor = UIColor.green
        }
        else{
            resultLabel.textColor = UIColor.red
        }
        resultLabel.text = String(result)
    }
}
