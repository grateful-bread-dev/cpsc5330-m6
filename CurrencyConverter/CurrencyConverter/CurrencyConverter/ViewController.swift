//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Jonathan Braun on 11/30/25.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var usdTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!

    @IBOutlet weak var currency1Switch: UISwitch!
    @IBOutlet weak var currency2Switch: UISwitch!
    @IBOutlet weak var currency3Switch: UISwitch!
    @IBOutlet weak var currency4Switch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.text = ""       // start with no error
    }

    // MARK: - Actions

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        guard let text = usdTextField.text,
              let _ = Int(text) else {
            errorLabel.text = "Please enter a valid integer amount in USD."
            return
        }

        errorLabel.text = ""
        performSegue(withIdentifier: "showResults", sender: self)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults",
           let dest = segue.destination as? ResultViewController {

            let usd = Int(usdTextField.text ?? "0") ?? 0
            dest.usdAmount = usd
            dest.showCurrency1 = currency1Switch.isOn
            dest.showCurrency2 = currency2Switch.isOn
            dest.showCurrency3 = currency3Switch.isOn
            dest.showCurrency4 = currency4Switch.isOn
        }
    }
}


