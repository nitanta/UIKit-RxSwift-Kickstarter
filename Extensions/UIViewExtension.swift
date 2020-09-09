//
//  UIViewExtension.swift
//  FCube
//
//  Created by Aatish Rajkarnikar on 9/15/17.
//  Copyright © 2017 amniltech. All rights reserved.
//

import UIKit

extension UIView{
    
    func dropShadow() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.darkGray.withAlphaComponent(0.7).cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.layer.shadowRadius = 1
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
    
    func bloatAnimation(imageView: UIImageView){
        UIView.animate(withDuration: 1.0, animations: {
            imageView.frame.size.width = 100
            imageView.frame.size.height = 100
        }) { (completion) in
            imageView.frame.size.width = 80
            imageView.frame.size.height = 80
            self.bloatAnimation(imageView: imageView)
        }
    }
}
