//
//  UITextField+Extension.swift
//  Travel App
//
//  Created by Admin on 28/05/22.
//

import UIKit

extension UITextField {
    
    func addRightView(image: UIImage,isSecure: Bool = false) {
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imageView.image = image
        let eye = UIImage(systemName: "eye.circle")
        let eye1 = UIImage(systemName: "eye.slash")
        if isSecure {
            let button = UIButton(frame: imageView.frame)
            button.setImage(eye, for: .normal)
            button.setImage(eye1, for: .selected)
            button.isSelected = true
            button.addTarget(self, action: #selector(onClickEye), for: .touchUpInside)
            rightView = button
            }
        else {
            rightView = imageView
        }
        rightViewMode = .always
        
    }
    
    @objc func onClickEye(sender: UIButton) {
        self.isSecureTextEntry = !self.isSecureTextEntry
        sender.isSelected = !sender.isSelected
    }
    
}
