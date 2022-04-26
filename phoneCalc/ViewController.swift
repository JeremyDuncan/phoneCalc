//
//  ViewController.swift
//  phoneCalc
//
//  Created by Jeremy Duncan on 4/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputText: UILabel!
    @IBOutlet weak var salesTaxInput: UITextField!
    @IBOutlet weak var priceInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputText.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func Calculate(_ sender: Any) {
        //when button is pressed, do this
        let salesTax = Double(salesTaxInput.text!)!
        let price = Double(priceInput.text!)!
        
        let totalSalesTax = salesTax * price
        let grandTotal = totalSalesTax + price
        
        outputText.text = "$\(grandTotal)"
    }
    
}

