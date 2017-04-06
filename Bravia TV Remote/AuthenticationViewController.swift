//
//  AuthenticationViewController.swift
//  Bravia TV Remote
//
//  Created by Craig Rhodes on 4/6/17.
//  Copyright © 2017 Craig Rhodes. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController {
    @IBOutlet weak var ipTextField: UITextField!
    @IBOutlet weak var authKeyTextField: UITextField!
    
    
    @IBAction func confirmButtonPressed(_ sender: Any) {
        let viewController = storyboard!.instantiateViewController(withIdentifier: "Remote") as! ViewController
        let ip = ipTextField.text!
        let authKey = authKeyTextField.text!
        viewController.ip = ip
        viewController.authKey = authKey
        present(viewController, animated: true)
    }
    
    
}
