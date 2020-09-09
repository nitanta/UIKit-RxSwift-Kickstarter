//
//  DisplayViewModel.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import UIKit

protocol DisplayViewModel: BaseViewModel {
    var noInternetVM: PublishSubject<Void> { get }
    var aslert: PublishSubject<Void> { get }
    var fetchAPI: PublishSubject<Void> { get }
}
