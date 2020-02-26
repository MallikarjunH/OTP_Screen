//
//  ViewController.swift
//  OPT_Sreen
//
//  Created by Mallikarjun on 20/02/20.
//  Copyright © 2020 ADDA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textOTP1: UITextField!
    @IBOutlet weak var textOTP2: UITextField!
    @IBOutlet weak var textOTP3: UITextField!
    @IBOutlet weak var textOTP4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addBottomBorderColor(textField: textOTP1)
        addBottomBorderColor(textField: textOTP2)
        addBottomBorderColor(textField: textOTP3)
        addBottomBorderColor(textField: textOTP4)
    }

    func addBottomBorderColor(textField: UITextField){
        
        let layer = CALayer()
        layer.backgroundColor = UIColor.gray.cgColor
        layer.frame = CGRect(x: 0, y: textField.frame.size.height - 2.0, width: textField.frame.size.width, height: 2.0)
        textField.layer.addSublayer(layer)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if ((textField.text!.count < 1) && (textField.text!.count > 1)){
            
            if textField == textOTP1{
                textOTP2.becomeFirstResponder()
            }
            
            if textField == textOTP2{
                textOTP3.becomeFirstResponder()
            }
            
            if textField == textOTP3{
                textOTP4.becomeFirstResponder()
            }
            
            if textField == textOTP4{
                textOTP4.resignFirstResponder()
            }
            
            textField.text = string
            
            return false
        }
        else if ((textField.text!.count > 1) && (textField.text!.count == 0)){
            
        }
        return true
    }

}

