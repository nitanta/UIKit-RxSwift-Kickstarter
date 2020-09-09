//
//  UITableViewExtension.swift
//  FCube
//
//  Created by Aatish Rajkarnikar on 10/26/17.
//  Copyright © 2017 amniltech. All rights reserved.
//

import UIKit

extension UITableView{
    
    func showMessage(text: String) {
        hideMessage()
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: 10.0)
        label.textColor = UIColor.white
        label.numberOfLines = 0
        label.frame.size = CGSize(width: self.frame.size.width - 32, height: 100)
        label.sizeToFit()
        label.center = CGPoint(x: self.frame.size.width/2, y: 32)
        label.tag = 999
        self.addSubview(label)
    }
    
    func hideMessage(){
        for item in self.subviews{
            if item.tag == 999 {
                item.removeFromSuperview()
            }
        }
    }
    
}

extension UICollectionView{
    
    func showMessage(text: String) {
        hideMessage()
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: 10.0)
        label.textColor = UIColor.white
        label.numberOfLines = 0
        label.frame.size = CGSize(width: self.frame.size.width - 32, height: 100)
        label.sizeToFit()
        label.center = CGPoint(x: self.frame.size.width/2, y: 32)
        label.tag = 999
        self.addSubview(label)
    }
    
    func hideMessage(){
        for item in self.subviews{
            if item.tag == 999 {
                item.removeFromSuperview()
            }
        }
    }
    
}
