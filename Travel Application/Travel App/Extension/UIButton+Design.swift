//
//  UIButton+Design.swift
//  Travel App
//
//  Created by Admin on 26/05/22.
//

import UIKit
extension UIButton {
    func designButton(borderWidth: CGFloat = 1, borderColor: UIColor = UIColor(red: 0.2471, green: 0.7451, blue: 0.8588, alpha: 1.0)) {
       layer.cornerRadius = frame.height/2
     clipsToBounds = true
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}
