//
//  CircularImage.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import UIKit

@IBDesignable
class CircularImage: UIImageView {
    @IBInspectable var borderColor: UIColor? = UIColor.red {
        didSet {
            layer.borderColor = self.borderColor?.cgColor
        }
    }
    @IBInspectable var borderWidth: CGFloat = 2 {
        didSet {
            layer.borderWidth = self.borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat = 5 {
        didSet {
            layer.cornerRadius = self.cornerRadius
            layer.masksToBounds = self.cornerRadius > 0
        }
    }
    
    @IBInspectable var bakground:UIColor? = UIColor.red{
        didSet{
            self.backgroundColor = self.bakground
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.cornerRadius
        self.layer.borderWidth = self.borderWidth
        self.layer.borderColor = self.borderColor?.cgColor
    }
}
