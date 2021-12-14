//
//  SecondViewController.swift
//  Prework
//
//  Created by Michelle Ly on 12/13/21.
//

import UIKit
import SwiftUI

class SecondViewController: UIViewController {


    @IBOutlet weak var billAmountTF: UITextField!
    @IBOutlet weak var tipAmountTextField: UITextField!
    @IBOutlet weak var numPeopleStepper: UIStepper!
    @IBOutlet weak var numPeopleLabel: UILabel!
    @IBOutlet weak var tipTotalLabel: UILabel!
    @IBOutlet weak var tipPerPersonLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Custom Tip Calculator"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func incrementNumberOfPeople(_ sender: Any) {
        numPeopleLabel.text =  "\(Int(numPeopleStepper.value))"
        
        let party = Double(numPeopleLabel.text!) ?? 0
        let givenTip = Double(tipAmountTextField.text!) ?? 0
        let tipPercent = givenTip / 100
        let bill = Double(billAmountTF.text!) ?? 0
        
        let tipAmount = bill * tipPercent
        let tipPer = tipAmount / party
        
        let total = bill + tipAmount
        let totalPer = total / party
        
        tipTotalLabel.text = String(format: "$%.2f", tipAmount)
        tipPerPersonLabel.text = String(format: "$%.2f", tipPer)
        totalLabel.text = String(format: "$%.2f", total)
        totalPerPersonLabel.text = String(format: "$%.2f", totalPer)
    }
    
    @IBAction func calculateTipButton(_ sender: Any) {
        let party = Double(numPeopleLabel.text!) ?? 0
        let givenTip = Double(tipAmountTextField.text!) ?? 0
        let tipPercent = givenTip / 100
        let bill = Double(billAmountTF.text!) ?? 0
        
        let tipAmount = bill * tipPercent
        let tipPer = tipAmount / party
        
        let total = bill + tipAmount
        let totalPer = total / party
        
        tipTotalLabel.text = String(format: "$%.2f", tipAmount)
        tipPerPersonLabel.text = String(format: "$%.2f", tipPer)
        totalLabel.text = String(format: "$%.2f", total)
        totalPerPersonLabel.text = String(format: "$%.2f", totalPer)
    }
    
 
}
