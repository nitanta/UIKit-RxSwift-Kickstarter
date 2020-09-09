//
//  Provider.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift

class Provider{
    static var shared = Provider()
    func callNetwork(_ api: Api)->Observable<(statusCode: Int?, error: String?, data: Any?)>{
        return Observable.create({ (observer) -> Disposable in
            AF.request(api.baseURL, method: api.method, parameters: api.params, encoding: api.paramEncoder, headers: api.headers, interceptor: nil).responseJSON(completionHandler: { (response) in
                let statusCode = response.response?.statusCode
                var error = response.error?.localizedDescription
                var result: Any? = nil
                debugPrint(response)
                switch response.result{
                case .success(let json):
                    result = json
                case .failure(let err):
                    error = err.localizedDescription
                }
                observer.onNext((statusCode: statusCode, error: error, data: result))
            })
            return Disposables.create()
        })
    }
}
