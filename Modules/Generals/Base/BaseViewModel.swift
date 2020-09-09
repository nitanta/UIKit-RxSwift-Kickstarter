//
//  BaseViewModel.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import RxSwift

protocol BaseViewModel {
    var isLoading: PublishSubject<Bool> { get }
    var snackBar: PublishSubject<String?> { get }
    var noInternet: PublishSubject<NoInternetViewModel> { get }
    var alert: PublishSubject<String> { get }
    var logout: PublishSubject<Void> { get }
    var alertViewModel: PublishSubject<AlertViewModel> { get }
}
