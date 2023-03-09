//
//  HomeViewController1.swift
//  Travel App
//
//  Created by Admin on 31/05/22.
//

import Foundation
import UIKit

class HomeViewController : UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onPlainClick(_ sender: Any) {
        print("hello in plain")
        guard let ticketController = storyboard?.instantiateViewController(withIdentifier: "TicketViewController") as? TicketViewController else {
            fatalError("unable to create ticketviewcontroller")
        }
        navigationController?.pushViewController(ticketController, animated: true)
    }
    
    
}
