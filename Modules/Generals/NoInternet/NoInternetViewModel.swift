//
//  NoInternetViewModel.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import RxSwift

protocol NoInternetViewModel: BaseViewModel {
    var retry: PublishSubject<Void> { get }
}

