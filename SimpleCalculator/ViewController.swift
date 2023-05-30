//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Şeyda Aydın on 30.05.2023.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func alertDialog(){
        let alert = UIAlertController(title: "Error!", message:"Wrong Variables", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default)
        
        alert.addAction(okButton)
        self.present(alert, animated: true , completion: nil)
        
        
    }

    @IBAction func sumClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstNumber.text!) {
            if let secondNumber = Int(secondNumber.text!) {
                
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
            else{
                resultLabel.text = ""
                alertDialog()
            }
        }
        else{
            resultLabel.text = ""
            alertDialog()
            
        }
    
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstNumber.text!) {
            if let secondNumber = Int(secondNumber.text!) {
                
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
            else{
                resultLabel.text = ""
                alertDialog()
            }
        }
        else{
            resultLabel.text = ""
            alertDialog()
        }
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstNumber.text!) {
            if let secondNumber = Int(secondNumber.text!) {
                
                result = firstNumber  * secondNumber
                resultLabel.text = String(result)
            }
            else{
                resultLabel.text = ""
                alertDialog()
            }
        }
        
        else{
            resultLabel.text = ""
            alertDialog()
        }
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstNumber.text!) {
            if let secondNumber = Int(secondNumber.text!) {
                
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
            else {
                resultLabel.text = ""
                alertDialog()
            }
        }
        else{
            resultLabel.text = ""
            alertDialog()
        }
    }
}

