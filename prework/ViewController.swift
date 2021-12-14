//
//  ViewController.swift
//  Prework
//
//  Created by Michelle Ly on 11/28/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var numPeopleStepper: UIStepper!
    @IBOutlet weak var numPeopleLabel: UILabel!
    @IBOutlet weak var tipPerPersonLabel: UILabel!
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTipButton(_ sender: Any) {
        // get bill amount from text field input
        let party = Double(numPeopleLabel.text!) ?? 0
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get total tip by multiplying tip * tip percentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let tipPer = tip / party
        let total = (bill + tip)
        let totalPer = total / party
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
        // update tip per person amount label
        tipPerPersonLabel.text = String(format: "$%.2f", tipPer)
        // update total per person amount label
        totalPerPersonLabel.text = String(format: "$%.2f", totalPer)
    }
    
    @IBAction func incrementNumberOfPeople(_ sender: Any) {
        numPeopleLabel.text =  "\(Int(numPeopleStepper.value))"
        
        // get bill amount from text field input
        let party = Double(numPeopleLabel.text!) ?? 0
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get total tip by multiplying tip * tip percentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let tipPer = tip / party
        let total = (bill + tip)
        let totalPer = total / party
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
        // update tip per person amount label
        tipPerPersonLabel.text = String(format: "$%.2f", tipPer)
        // update total per person amount label
        totalPerPersonLabel.text = String(format: "$%.2f", totalPer)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // get bill amount from text field input
        let party = Double(numPeopleLabel.text!) ?? 0
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // get total tip by multiplying tip * tip percentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let tipPer = tip / party
        let total = (bill + tip)
        let totalPer = total / party
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update total amount
        totalLabel.text = String(format: "$%.2f", total)
        // update tip per person amount label
        tipPerPersonLabel.text = String(format: "$%.2f", tipPer)
        // update total per person amount label
        totalPerPersonLabel.text = String(format: "$%.2f", totalPer)
    }
    
}

