//
//  ViewController.swift
//  SwitchApp
//
//  Created by Admin on 03/12/2019.
//  Copyright © 2019 Eugene Palagin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newSwitch: UISwitch!

    @IBAction func showAlert(_ sender: Any) {
        
        if self.newSwitch.isOn == false {
            someAlert(title: "Error", message: "Ooops... We have some error here.", style: .alert)
        } else {
            someAlert(title: "Success", message: "Yeah, we did it!", style: .alert)
        }
        
    }
    
    func someAlert(title: String, message: String, style: UIAlertController.Style){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let controllerAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(controllerAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

