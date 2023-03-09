//
//  LoginViewController.swift
//  Travel App
//
//  Created by Admin on 30/05/22.
//

import UIKit

class LoginViewController: UIViewController {

   
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = UIImage(systemName: "person.circle")!
        let eye = UIImage(systemName: "eye.circle")!

        txtEmail.addRightView(image: person)
        txtPassword.addRightView(image: eye,isSecure : true)
    }
    
    @IBAction func onSignInClick(_ sender: Any) {
    UserDefaults.standard.set("LogedIn", forKey: "accessToken")
        changeRoot()
    }

    
   
    }


