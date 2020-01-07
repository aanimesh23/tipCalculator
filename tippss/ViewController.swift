//
//  ViewController.swift
//  tippss
//
//  Created by Animesh Agrawal on 1/6/20.
//  Copyright © 2020 Animesh Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    @IBOutlet weak var totalTwoPeople: UILabel!
    @IBOutlet weak var totalThreePeople: UILabel!
    @IBOutlet weak var totalFourPeople: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0 // ?? 0 means if an error then changer it to 0
        let percent = [0.1, 0.15, 0.18, 0.2]
        let tip = percent[tipPercent.selectedSegmentIndex] * bill
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalTwoPeople.text = String(format: "$%.2f", (total/2))
        totalThreePeople.text = String(format: "$%.2f", (total/3))
        totalFourPeople.text = String(format: "$%.2f", (total/4))
        
        
    }
}

