//
//  IndicatorImage.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/12/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import UIKit

class IndicatorImage: UIView{
    @IBOutlet weak var activityView: UIActivityIndicatorView!{
        didSet{
            activityView.isHidden = true
        }
    }
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    var isActivityType: Bool? = false{
        didSet{
            activityView.isHidden = !isActivityType!
        }
    }
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "IndicatorImage", bundle: bundle)
        self.containerView = nib.instantiate(withOwner: self, options: nil).first as? UIView
        addSubview(containerView)
    }
}
