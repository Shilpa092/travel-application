//
//  TicketViewController.swift
//  Travel App
//
//  Created by Admin on 31/05/22.
//

import UIKit

class TicketViewController: UIViewController {

    @IBOutlet weak var btnMulti: UIButton!
    @IBOutlet weak var btnOneway: UIButton!
    @IBOutlet weak var btnRound: UIButton!
    @IBOutlet weak var backView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        btnRound.designButton(borderWidth: 0, borderColor: .clear)
        btnOneway.designButton(borderWidth: 0, borderColor: .clear)
        btnMulti.designButton(borderWidth: 0, borderColor: .clear)
        backView.designView(borderWidth: 0.5, borderColor: .gray)
    }
    @IBAction func onClickRound(_ sender: Any) {
        changeButtonColor(roundColor: UIColor(red: 0.8431, green: 0.8745, blue: 0.898, alpha: 1), roundTxtColor: UIColor(red: 1, green: 0.9961, blue: 0.9822, alpha: 1.0))
    }
    @IBAction func onClickOneWay(_ sender: Any) {
        changeButtonColor(oneWayColor: UIColor(red: 0.8431, green: 0.8745, blue: 0.898, alpha: 1), OneWayTxtColor: UIColor(red: 1, green: 0.9961, blue: 0.9822, alpha: 1.0))
    }
    @IBAction func onClickMulti(_ sender: Any) {
            changeButtonColor(MultiColor: UIColor(red: 0.8431, green: 0.8745, blue: 0.898, alpha: 1), MultiTxtColor: UIColor(red: 1, green: 0.9961, blue: 0.9822, alpha: 1.0))
    }
    func changeButtonColor(
        roundColor: UIColor = UIColor(red: 1, green: 0.9961, blue: 0.9822, alpha: 1.0), oneWayColor: UIColor = UIColor(red: 1, green: 0.9961, blue: 0.9822, alpha: 1.0), MultiColor: UIColor = UIColor(red: 1, green: 0.9961, blue: 0.9822, alpha: 1.0), roundTxtColor: UIColor = UIColor(red:0.2235, green: 0.4863, blue: 0.9765, alpha: 1.0),
        OneWayTxtColor: UIColor = UIColor(red:0.2235, green: 0.4863, blue: 0.9765, alpha: 1.0), MultiTxtColor: UIColor = UIColor(red:0.2235, green: 0.4863, blue: 0.9765, alpha: 1.0)) {
        
        btnRound.backgroundColor = roundColor
        btnOneway.backgroundColor = oneWayColor
        btnMulti.backgroundColor = MultiColor
            
        btnRound.setTitleColor(roundTxtColor, for: .normal)
        btnOneway.setTitleColor(OneWayTxtColor, for: .normal)
        btnMulti.setTitleColor(MultiTxtColor, for: .normal)
    }
    
    @IBAction func onClickSearchFlight(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "FlightResultViewController") as? FlightResultViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}


