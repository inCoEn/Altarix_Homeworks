//
//  UserInputViewController.swift
//  PoliteApp
//
//  Created by Admin on 04/12/2019.
//  Copyright © 2019 Eugene Palagin. All rights reserved.
//

import UIKit

class UserInputViewController: UIViewController {
    
    @IBOutlet var userInputLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var surnameField: UITextField!
    
    @IBAction func helpButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Help", message: "Please fill all fields and then press \"Save\" button. If You do not fill one of fields, default values will be used.", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }
}

