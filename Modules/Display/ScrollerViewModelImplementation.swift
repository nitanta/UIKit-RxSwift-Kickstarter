//
//  ScrollerViewModelImplementation.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import SwinjectStoryboard

class ScrollerViewModelImplementation: BaseViewModelImplementation, ScrollerViewModel {
    var noInternetVM: PublishSubject<Void> = PublishSubject()
    var aslert: PublishSubject<Void> = PublishSubject()
    
    override init() {
        super.init()
        noInternetVM.subscribe(onNext: { (_) in
            let noInternetVM = NoInternetViewModelImplementation(onRetry: {
            })
            self.noInternet.onNext(noInternetVM)
        }).disposed(by: self.disposeBag)
        aslert.subscribe(onNext: { (_) in
            let vm = SwinjectStoryboard.defaultContainer.resolve(AlertViewModel.self)!
            vm.text.accept("First alert display.")
            vm.buttonText.accept("CANCEL")
            vm.action.subscribe(onNext: { () in
                debugPrint("CANCEL TAPPED")
            }).disposed(by: self.disposeBag)
            self.alertViewModel.onNext(vm)
            
            
            //self.alert.onNext("This is a display alert")
        }).disposed(by: self.disposeBag)
    }
}
