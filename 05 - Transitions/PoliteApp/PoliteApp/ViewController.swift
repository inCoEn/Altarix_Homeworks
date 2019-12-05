//
//  ViewController.swift
//  PoliteApp
//
//  Created by Admin on 04/12/2019.
//  Copyright © 2019 Eugene Palagin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func showUserInputBtn(_ sender: Any) {
        performSegue(withIdentifier: "showUserInput", sender: nil)

    }
    
    @IBAction func saveButton(segue: UIStoryboardSegue) {
    
    guard segue.identifier == "unwindToFirstScreen" else { return }
    guard let userInputVC = segue.source as? UserInputViewController else { return }
        if userInputVC.nameField.text!.isEmpty || userInputVC.surnameField.text!.isEmpty {
            titleLabel.text = "Hello, John Appleseed! Happy to see you."
        } else {
            titleLabel.text = "Hello, \(userInputVC.nameField.text!) \(userInputVC.surnameField.text!)! Happy to see you."
        }
    }
}

