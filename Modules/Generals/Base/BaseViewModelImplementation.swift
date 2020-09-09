//
//  BaseViewModelImplementation.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import RxSwift
import UIKit

class BaseViewModelImplementation: BaseViewModel {
    
    let disposeBag = DisposeBag()
    var isLoading: PublishSubject<Bool> = PublishSubject()
    var snackBar: PublishSubject<String?> = PublishSubject()
    var noInternet: PublishSubject<NoInternetViewModel> = PublishSubject()
    var alert: PublishSubject<String> = PublishSubject()
    var logout: PublishSubject<Void> = PublishSubject()
    var alertViewModel: PublishSubject<AlertViewModel> = PublishSubject()
    let width = UIScreen.main.bounds.width
    let provider: Provider = Provider.shared
    
}
