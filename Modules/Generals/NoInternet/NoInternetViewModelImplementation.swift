//
//  NoInternetViewModelImplementation.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import RxSwift

class NoInternetViewModelImplementation: BaseViewModelImplementation, NoInternetViewModel {
    
    var retry: PublishSubject<Void> = PublishSubject()
    
    init(onRetry: @escaping ()->()) {
        super.init()
        retry.subscribe(onNext: { () in
            onRetry()
        }).disposed(by: self.disposeBag)
    }
    
}
