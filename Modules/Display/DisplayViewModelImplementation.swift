//
//  DisplayViewModelImplementation.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import SwinjectStoryboard

class DisplayViewModelImplementation: BaseViewModelImplementation, DisplayViewModel {
    var noInternetVM: PublishSubject<Void> = PublishSubject()
    var aslert: PublishSubject<Void> = PublishSubject()
    var fetchAPI: PublishSubject<Void> = PublishSubject()

    
    override init() {
        super.init()
        
        let apiRAesponse = fetchAPI.do(onNext: { (_) in
            self.isLoading.onNext(true)
        }).flatMap{
            self.provider.callNetwork(.fetchList)
            }.do(onNext: { (_) in
                self.isLoading.onNext(false)
            }).share()
        
        apiRAesponse.subscribe(onNext: { (response) in
            if let datum = response.data{
                let jsonData = try? JSONSerialization.data(withJSONObject: datum)
                do {
                    let decoder = JSONDecoder()
                    let api = try decoder.decode(APIResponbse.self, from:
                        jsonData!)
                    print(api)
                } catch let parsingError {
                    print("Error", parsingError)
                }
            }
        }).disposed(by: disposeBag)
        
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
