//
//  SecondViewController.swift
//  TechKnights
//
//  Created by Fulton Garcia on 4/11/17.
//  Copyright © 2017 Fulton Garcia. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var quantityTxt: UITextField!
    
    @IBAction func saveBtn(_ sender: AnyObject) {
        if(nameTxt.text != ""){
            var num = Int(quantityTxt.text!)
            if(num == nil){
                num = 1
            }
            itemList.addItem(name: nameTxt.text!, quantity: num!)
            self.view.endEditing(true)
            
            nameTxt.text = ""
            quantityTxt.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

