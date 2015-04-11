//
//  ViewController.swift
//  Laika
//
//  Created by Willie Strickland on 4/10/15.
//  Copyright (c) 2015 Willie Strickland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYears: UITextField!
    @IBOutlet weak var humanYears: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let stringEntered = dogYears.text
        let optionalIntFromTextEntered = stringEntered.toInt()
        let intFromOptional = optionalIntFromTextEntered!
    
        
        dogYears.hidden = false
        dogYears.text = stringEntered + " dog years = " + "\(intFromOptional * 7)" + " human years!"
        
        dogYears.resignFirstResponder()

    }

}