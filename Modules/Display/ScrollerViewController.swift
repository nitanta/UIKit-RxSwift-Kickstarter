//
//  ScrollerViewController.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import UIKit

class ScrollerViewController: BaseViewController{
    
    @IBOutlet weak var skeletalLabel: SkeletalLabel!
    @IBOutlet weak var skeletalImage: SkeletalImage!
    @IBOutlet weak var firstView: SkeletalView!
    @IBOutlet weak var secodViewe: UIView!
    @IBOutlet weak var thirdViewe: UIView!
    @IBOutlet weak var forthViewe: UIView!
    @IBOutlet weak var fifthViewe: UIView!
    
    var scrollerViewModel: ScrollerViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstView.showSkeletal()
        skeletalImage.showSkeletal()
        skeletalLabel.showSkeletal()
    }
    
    func binder(){
        guard let vm = scrollerViewModel else { return }
    }
    @IBAction func dismiiss(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
}
