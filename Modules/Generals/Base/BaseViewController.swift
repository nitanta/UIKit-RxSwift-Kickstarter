//
//  BaseViewController.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import UIKit
import RxSwift

class BaseViewController: UIViewController {
    let disposeBag = DisposeBag()
    var loaderView: UIView!
    var backgroundImageView: UIImageView!
    var viewModel: BaseViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    func bind(){
        guard let viewModel = viewModel else { return }
        
        backgroundImageView = UIImageView(frame: view.bounds)
        backgroundImageView.image = nil
        backgroundImageView.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImageView, at: 0)
        
        
        loaderView = UIView(frame: CGRect(x: 0, y: 0 , width: 200, height: 200))
        loaderView.center = self.view.center
        loaderView.backgroundColor = UIColor.green
        loaderView.isHidden = true
        view.addSubview(loaderView)
        
        let loaderImage = UIImageView(frame: CGRect(x: 0, y: 0 , width: 100, height: 100))
        loaderImage.backgroundColor = UIColor.darkGray
        loaderView.addSubview(loaderImage)
        
        loaderImage.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = loaderImage.centerXAnchor.constraint(equalTo: loaderView.centerXAnchor)
        let verticalConstraint = loaderImage.centerYAnchor.constraint(equalTo: loaderView.centerYAnchor)
        let widthConstraint = loaderImage.widthAnchor.constraint(equalToConstant: 100)
        let heightConstraint = loaderImage.heightAnchor.constraint(equalToConstant: 100)
        loaderView.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
       
        
        viewModel.isLoading.asObservable().subscribe(onNext: { (value) in
            if value {
                self.view.endEditing(true)
                self.loaderView.isHidden = false
            }else{
                self.loaderView.isHidden = true
            }
        }).disposed(by: disposeBag)
        
        viewModel.noInternet.subscribe(onNext: { (vm) in
            let dvc = UIStoryboard().instrancer(storyboard: "Generals", controller: "NoInternetViewController") as? NoInternetViewController
            dvc?.noVC = vm
            self.navigationController?.present(dvc!, animated: true, completion: nil)
        }).disposed(by: disposeBag)
        
        viewModel.alert.subscribe(onNext: { (msg) in
            let dvc = UIStoryboard().instrancer(storyboard: "Generals", controller: "AlertViewController") as? AlertViewController
            dvc?.message = msg
            self.navigationController?.present(dvc!, animated: true, completion: nil)
        }).disposed(by: disposeBag)
        
        viewModel.alertViewModel.subscribe(onNext: { (vm) in
            let dvc = UIStoryboard().instrancer(storyboard: "Generals", controller: "AlertViewController") as? AlertViewController
            dvc?.alertViewModel = vm
            self.navigationController?.present(dvc!, animated: true, completion: nil)
        }).disposed(by: disposeBag)
        
        
        viewModel.logout.subscribe(onNext: { (vm) in
            //            UserManager.sharedInstance.deleteUserDaa()
            //            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            //            let signInVC = DependencyInjection.container.resolve(LoginOptionsViewController.self)!
            //            let nav = UINavigationController(rootViewController: signInVC)
            //            nav.isNavigationBarHidden = true
            //            appDelegate.window?.rootViewController = nav
        }).disposed(by: disposeBag)
    }
}



