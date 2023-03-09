//
//  CuatomeButton.swift
//  Travel App
//
//  Created by Admin on 25/05/22.
//

import UIKit

class CustomeButton : UIButton{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRadiousAndShado()
        
    }
    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)
        setRadiousAndShado()
    }
    
    func setRadiousAndShado(){
        layer.cornerRadius = frame.height/2
        clipsToBounds = true
        layer.masksToBounds = false
        layer.shadowRadius = 10
        layer.shadowOpacity = 1.0
        layer.shadowColor = CGColor.init(red: 0.57, green: 0.57, blue: 0.57, alpha: 1)
        layer.shadowOffset = CGSize(width: 3, height: 3)
    }
}
