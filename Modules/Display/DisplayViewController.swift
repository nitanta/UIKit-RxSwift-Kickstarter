//
//  DisplayViewController.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import UIKit
import PDFKit

class DisplayViewController: BaseViewController {

    @IBOutlet weak var profileView: ProfileView!
    @IBOutlet weak var scrollerButton: CustomButton!
    @IBOutlet weak var alertButton: CustomButton!
    @IBOutlet weak var noInternetButton: CustomButton!
    @IBOutlet weak var logoImage: IndicatorImage!
    
    private lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.tintColor = UIColor.green
        return refreshControl
    }()
    
    var displayViewModel: DisplayViewModel?
    override func viewDidLoad() {
        binder()
        profileView.containerView.dropShadow()
    }
    
    func binder(){
        guard let vm = displayViewModel else { return }
        super.viewModel = vm
        super.viewDidLoad()
        alertButton.rx.tap.bind(to: vm.aslert).disposed(by: disposeBag)
        noInternetButton.rx.tap.bind(to: vm.noInternetVM).disposed(by: disposeBag)
        vm.fetchAPI.onNext(())
        logoImage.imageView.imageFromServerURL("https://m.media-amazon.com/images/M/MV5BMTcyNTEyOTY0M15BMl5BanBnXkFtZTgwOTAyNzU3MDI@._V1_SX300.jpg", nil, { (value) in
            self.logoImage.activityView.isHidden = false
            self.logoImage.activityView.startAnimating()
        }) { (value) in
            self.logoImage.activityView.stopAnimating()
            self.logoImage.activityView.isHidden = true
        }
    }
    @IBAction func scrollerClicked(_ sender: CustomButton){
        let dvc = UIStoryboard().instrancer(storyboard: "Display", controller: "ScrollerViewController") as? ScrollerViewController
        self.navigationController?.pushViewController(dvc!, animated: true)
    }
}
