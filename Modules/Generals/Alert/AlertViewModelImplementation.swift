//
//  AlertViewModelImplementation.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class AlertViewModelImplementation: BaseViewModelImplementation, AlertViewModel {
    
    var text: BehaviorRelay<String?> = BehaviorRelay(value: "")
    var action: PublishSubject<Void> = PublishSubject()
    var textAction: PublishSubject<String>  = PublishSubject()
    var buttonText: BehaviorRelay<String> = BehaviorRelay(value: "")
    
    override init() {
        super.init()
    }
}
