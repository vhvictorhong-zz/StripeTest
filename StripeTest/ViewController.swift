//
//  ViewController.swift
//  StripeTest
//
//  Created by Victor Hong on 05/04/2017.
//  Copyright © 2017 Victor Hong. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet weak var spinnerActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var cardNumberTextField: UITextField!
    @IBOutlet weak var expireDateTextField: UITextField!
    @IBOutlet weak var cvcTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    
    @IBOutlet var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func paymentAction(_ sender: Any) {
        
    }
    

}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
        
    }
    
}

