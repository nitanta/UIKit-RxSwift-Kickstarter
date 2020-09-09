//
//  Button.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import UIKit

enum FillType: Int{
    case Hollow = 0
    case Filled = 1
}

@IBDesignable
class CustomButton: UIButton {
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
//    @IBInspectable var typeAdapter:Int = 0{
//        didSet{
//            self.type = FillType(rawValue: self.typeAdapter)!
//        }
//    }
    @IBInspectable var bakground:UIColor? = UIColor.red{
        didSet{
            self.backgroundColor = self.bakground
        }
    }
    @IBInspectable var txtColor:UIColor? = UIColor.red{
        didSet{
            self.titleLabel?.textColor = self.txtColor
        }
    }
//    var type: FillType = .Filled{
//        didSet{
//            switch self.type{
//            case .Filled:
//                backgroundColor = UIColor.red
//                layer.borderColor = self.borderColor?.cgColor
//                layer.borderWidth = self.borderWidth
//                layer.cornerRadius = self.cornerRadius
//                layer.masksToBounds = self.cornerRadius > 0
//                titleLabel?.textColor = self.txtColor
//            case .Hollow:
//                backgroundColor = UIColor.clear
//                layer.borderColor = self.borderColor?.cgColor
//                layer.borderWidth = self.borderWidth
//                layer.cornerRadius = self.cornerRadius
//                layer.masksToBounds = self.cornerRadius > 0
//                titleLabel?.textColor = self.backgroundColor
//            }
//        }
//    }
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
