//
//  DetailViewController.swift
//  Homepwner
//
//  Created by Samaykham on 10/9/16.
//  Copyright © 2016 Samaykham. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var serialField: UITextField!
    @IBOutlet weak var valueField: UITextField!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    var item: Item!
    
    let numberFormatter: NumberFormatter = {
       let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }()
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nameField.text = item.name
        serialField.text = item.serialNumber
        valueField.text = numberFormatter.string(from: NSNumber(integerLiteral: item.valueInDollars))
        dateLabel.text = dateFormatter.string(from: item.dateCreated as Date)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
