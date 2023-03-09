//
//  FlightResultViewController.swift
//  Travel App
//
//  Created by Admin on 02/06/22.
//

import UIKit
class ResultCell: UITableViewCell {
    
    @IBOutlet weak var backView: UIView!
}

class FlightResultViewController: UIViewController {

    
    @IBOutlet weak var ResultTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
extension FlightResultViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath) as?  ResultCell else {
            fatalError("unable to create table view")

        }
        cell.backView.layer.cornerRadius = 5
        cell.backView.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

    }
