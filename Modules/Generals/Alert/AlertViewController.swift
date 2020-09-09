//
//  AlertViewController.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import UIKit

class AlertViewController: BaseViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    var alertViewModel: AlertViewModel?
    var message: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    override func bind() {
        guard let viewModel = alertViewModel  else { return }
        textView.rx.text.bind(to: viewModel.text).disposed(by: disposeBag)
        button.rx.tap.bind(to: viewModel.action).disposed(by: disposeBag)
        button.addTarget(self, action: #selector(cancelTapped), for: .touchUpInside)
    }
    
    @objc func cancelTapped(){
        self.dismiss(animated: true, completion: nil)
    }
}
