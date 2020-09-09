//
//  Api.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import Alamofire

enum Api {
    case login(username: String, password: String)
    case register(fullname: String, mobileno: String, email: String)
    case fetchList
}

extension Api{
    
    var baseURL: URL { return URL(string: Global.baseURL)! }
    var path: String {
        switch self {
        case .login:
            return ""
        case .register:
            return ""
        case .fetchList:
            return ""
        }
    }
    var method: HTTPMethod {
        switch self {
        case  .login, .register, .fetchList:
            return .get
        }
    }
    
    var paramEncoder: ParameterEncoding {
        switch self {
        case  .register, .fetchList:
            return URLEncoding.queryString
        default:
            return JSONEncoding.prettyPrinted
        }
    }
    
    var params: Parameters {
        switch self {
        case let .login(email, password):
            return [
                "username":email,
                "password" : password
                ]
        case let .register(fullname, mobileno, email):
            return [
                "fullName":fullname,
                "mobileNo":mobileno,
                "email":email
                ]
        case .fetchList:
            return [
                "s": "Batman"
            ]
        }
    }
    
    var headers: HTTPHeaders {
        return HTTPHeaders(["Content-type": "application/json"])
    }
}

private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    
    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}


