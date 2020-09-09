//
//  NoInternetViewController.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import UIKit

class NoInternetViewController: BaseViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    var noVC: NoInternetViewModel?
    var message: String? = "It seems you have lost internet connectivity. An active connection is required to continue to use this app. Please try again shorty."
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    override func bind(){
        guard let viewModel = noVC else { return }
        super.viewModel = viewModel
        button.rx.tap.bind(to: viewModel.retry).disposed(by: disposeBag)
        button.addTarget(self, action: #selector(retryTapped), for: .touchUpInside)
        self.textView.text = message
    }
    
    @objc func retryTapped(){
        self.dismiss(animated: true, completion: nil)
    }
}
