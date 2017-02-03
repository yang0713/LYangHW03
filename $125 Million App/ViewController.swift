//
//  ViewController.swift
//  $125 Million App
//
//  Created by Liuke Yang on 2/2/17.
//  Copyright © 2017 Liuke Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(_ sender: UIButton) {
        
        if let miles = Double(userInput.text!){
            let km = miles * 1.609
            
            if miles <= 1 && km <= 1{
                resultsLabel.text = "\(miles) mile = \(km) kilometer"
            } else{
                if miles <= 1{
                    resultsLabel.text = "\(miles) mile = \(km) kilometers"
                }else{
                    resultsLabel.text = "\(miles) miles = \(km) kilometers"
                }
            }
        }else{
            resultsLabel.text = ""
            
            let alertController = UIAlertController(title: "Entry Error", message: "The input you have entered is not a number. Please be sure to enter numbers only. No commas, symbols, or non-numeric characters.", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        }
    }
}

