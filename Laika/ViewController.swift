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
    @IBOutlet weak var tempField: UITextField!
    

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
        humanYears.text = stringEntered + " dog years = " + "\(intFromOptional * 7)" + " human years!"
        
        dogYears.resignFirstResponder()

    }
    
    @IBAction func morePreciseButtonPressed(sender: UIButton) {
        
        var morePreciseDogYears:Double
        var doubleFromTextEntered = ((dogYears.text as NSString).doubleValue)
        
        if doubleFromTextEntered <= 2 {
            morePreciseDogYears = doubleFromTextEntered * 10.5
        }
        else {
            morePreciseDogYears = 10.5 + ((doubleFromTextEntered - 2) * 4)
        }
        
        
        dogYears.hidden = false
        let newString = dogYears.text + " dog years = " + "\(morePreciseDogYears)" + " human years!"
        tempField.text = newString
        
        dogYears.resignFirstResponder()
    }
    
}