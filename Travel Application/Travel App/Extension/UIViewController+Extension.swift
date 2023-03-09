//
//  UIViewController+Extension.swift
//  Travel App
//
//  Created by Admin on 30/05/22.
//

import UIKit

extension UIViewController {
    func changeRoot() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
