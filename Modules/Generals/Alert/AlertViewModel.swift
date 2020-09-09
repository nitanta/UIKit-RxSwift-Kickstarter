//
//  AlertViewModel.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import UIKit

protocol AlertViewModel: BaseViewModel {
    var text: BehaviorRelay<String?> { get }
    var action: PublishSubject<Void> { get }
    var textAction: PublishSubject<String> { get }
    var buttonText: BehaviorRelay<String> { get }
}
