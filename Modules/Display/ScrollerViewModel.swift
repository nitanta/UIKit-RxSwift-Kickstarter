//
//  ScrollerViewModel.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import UIKit

protocol ScrollerViewModel: BaseViewModel {
    var noInternetVM: PublishSubject<Void> { get }
    var aslert: PublishSubject<Void> { get }
}
