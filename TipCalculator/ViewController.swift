//
//  ViewController.swift
//  TipCalculator
//
//  Created by Shrijan Aryal on २०१८-०८-२३.
//  Copyright © २०१८ Shrijan Aryal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
 
    @IBAction func calculateTip(_ sender: Any) {
        let tipArray = [0.18,0.2,0.25]
        let bill = Double(billText.text!) ?? 0
        let tip = tipArray[tipPercent.selectedSegmentIndex]*bill
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
    }

    
}

