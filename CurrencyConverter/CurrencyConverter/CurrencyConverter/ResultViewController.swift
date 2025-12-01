//
//  ResultViewController.swift
//  CurrencyConverter
//
//  Created by Jonathan Braun on 11/30/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var usdAmountLabel: UILabel!
    
    @IBOutlet weak var currency1AmountLabel: UILabel!
    @IBOutlet weak var currency2AmountLabel: UILabel!
    @IBOutlet weak var currency3AmountLabel: UILabel!
    @IBOutlet weak var currency4AmountLabel: UILabel!
    
    var usdAmount: Int = 0
    var showCurrency1 = false
    var showCurrency2 = false
    var showCurrency3 = false
    var showCurrency4 = false
    
    //hard-coded rates
    let rate1 = 0.86
    let rate2 = 0.76
    let rate3 = 156.1
    let rate4 = 1.40
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdAmountLabel.text = "Amount in USD: \(usdAmount)"
        
        updateLabel(currency1AmountLabel, show: showCurrency1, rate: rate1)
        updateLabel(currency2AmountLabel, show: showCurrency2, rate: rate2)
        updateLabel(currency3AmountLabel, show: showCurrency3, rate: rate3)
        updateLabel(currency4AmountLabel, show: showCurrency4, rate: rate4)

        // Do any additional setup after loading the view.
    }
    
    private func updateLabel(_ label: UILabel, show: Bool, rate: Double) {
        if show {
            let value = Double(usdAmount) * rate
            label.text = String(format: "%.2f", value)
        } else {
            label.text = "-"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
