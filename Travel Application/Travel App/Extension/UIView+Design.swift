//
//  UIView+Design.swift
//  Travel App
//
//  Created by Admin on 27/05/22.
//

import UIKit
class CustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRadiousAndShado()
        
    }
    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)
        setRadiousAndShado()
    }
    
    func setRadiousAndShado(){
        layer.cornerRadius = 5
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 10
        layer.shadowOpacity = 1.0
        layer.shadowColor = CGColor.init(red: 0.57, green: 0.57, blue: 0.57, alpha: 1)
        layer.shadowOffset = CGSize(width: 3, height: 0)
    }}

extension UIView {
        
        func designView(borderWidth: CGFloat = 1, borderColor: UIColor = UIColor(red: 0.2471, green: 0.7451, blue: 0.8588, alpha: 1.0)) {
              layer.cornerRadius = frame.height/2
               clipsToBounds = true
                layer.borderWidth = borderWidth
                layer.borderColor = borderColor.cgColor

        
    }
        

        
    }


