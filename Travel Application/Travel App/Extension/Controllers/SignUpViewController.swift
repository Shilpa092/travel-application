//
//  SignUpViewController.swift
//  Travel App
//
//  Created by Admin on 27/05/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnFacebook: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let email = UIImage(systemName: "envelope.fill")!
        let person = UIImage(systemName: "person.circle")!
        let eye = UIImage(systemName: "eye.circle")!
        
        btnFacebook.designButton(borderWidth: 0, borderColor: UIColor.clear)
        txtFullName.addRightView(image:person )
        txtEmail.addRightView(image: email)
        txtPassword.addRightView(image: eye,isSecure: true)
      
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
