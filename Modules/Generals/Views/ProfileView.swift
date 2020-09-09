//
//  ProfileView.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/12/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import UIKit

class ProfileView: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var profileImage: CircularImage!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var gender: UILabel!
    
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
        let nib = UINib(nibName: "ProfileView", bundle: bundle)
        self.containerView = nib.instantiate(withOwner: self, options: nil).first as? UIView
        addSubview(containerView)
    }
}
