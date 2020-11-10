//
//  ViewController.swift
//  Bank App
//
//  Created by Сергей Балашов on 09.11.2020.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var amountLabel: UILabel?
    @IBOutlet weak var nperTextField: UITextField?
    @IBOutlet weak var pvTextField: UITextField?
    @IBOutlet weak var rateTextField: UITextField?
    
    //MARK: - Properties
    var amount = 9999.99 {
        didSet {
            updateAmountLabel()
        }
    }
    
    //MARK: - Methods
    func updateAmountLabel() {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "$"
        
        let number = NSNumber(value: amount)
        amountLabel?.text = formatter.string(from: number)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateAmountLabel()
    }

    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        print(sender.text ?? "nil")
    }
    
}

