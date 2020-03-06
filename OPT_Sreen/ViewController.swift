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
    
    var otpValue1 = ""
    var otpValue2 = ""
    var otpValue3 = ""
    var otpValue4 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        addBottomBorderColor(textField: textOTP1)
        addBottomBorderColor(textField: textOTP2)
        addBottomBorderColor(textField: textOTP3)
        addBottomBorderColor(textField: textOTP4)
        
        textOTP1.becomeFirstResponder()
    }

    func addBottomBorderColor(textField: UITextField){
        
        let layer = CALayer()
        layer.backgroundColor = UIColor.gray.cgColor
        layer.frame = CGRect(x: 0, y: textField.frame.size.height - 2.0, width: textField.frame.size.width, height: 2.0)
        textField.layer.addSublayer(layer)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if ((textField.text!.count < 1) && (string.count > 0)){ //Entering first and moving next TextField
            
            
            if textField == textOTP1{
                otpValue1 = textField.text ?? ""
                textOTP2.becomeFirstResponder()
            }
            
            if textField == textOTP2{
                otpValue2 = textField.text ?? ""
                textOTP3.becomeFirstResponder()
            }
            
            if textField == textOTP3{
                otpValue3 = textField.text ?? ""
                textOTP4.becomeFirstResponder()
            }
            
            if textField == textOTP4{
                otpValue4 = textField.text ?? ""
                textOTP4.resignFirstResponder()
            }
            
            textField.text = string
            
            return false
        }
        else if ((textField.text!.count >= 1) && (string.count == 0)){ // removing/deleteing
            
            if textField == textOTP1{
                otpValue1 = textField.text ?? ""
                textOTP1.resignFirstResponder()
            }
            
            if textField == textOTP2{
                otpValue2 = textField.text ?? ""
                textOTP1.becomeFirstResponder()
            }
            
            if textField == textOTP3{
                otpValue3 = textField.text ?? ""
                textOTP2.becomeFirstResponder()
            }
            
            if textField == textOTP4{
                otpValue4 = textField.text ?? ""
                textOTP3.becomeFirstResponder()
            }
            
            textField.text = ""
            return false
        }
        else if (textField.text!.count) >= 1{ // After changing value (Already entered but changing again)
            
            if textField == textOTP1{
                otpValue1 = textField.text ?? ""
            }
            
            if textField == textOTP2{
                otpValue2 = textField.text ?? ""
            }
            
            if textField == textOTP3{
                otpValue3 = textField.text ?? ""
            }
            
            if textField == textOTP4{
                otpValue4 = textField.text ?? ""
            }
            
            textField.text = string
            return false
        }
        return true
    }

}

