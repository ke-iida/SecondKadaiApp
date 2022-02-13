//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Keisuke Iida on 2022/02/12.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.delegate = self
    }
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range:NSRange, replacementString string: String)->Bool{
//        return true
//    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        //resultViewController.name = "iida"
        if let buf:String = textField.text {
        resultViewController.name = buf
        }
        //resultViewController.name = textField.text
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
    
}

