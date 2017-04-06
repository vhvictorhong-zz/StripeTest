//
//  MainViewController.swift
//  StripeTest
//
//  Created by Victor Hong on 05/04/2017.
//  Copyright © 2017 Victor Hong. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }


    @IBAction func donateAction(_ sender: Any) {
        
        if (amountTextField.text?.isEmpty)! {
            
            let alertController = UIAlertController(title: "Error", message: "You did not enter an amount", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
            
        } else {
            
            let VC = PaymentViewController(amount: Int(amountTextField.text!)!)
            
            self.navigationController?.pushViewController(VC, animated: true)
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
