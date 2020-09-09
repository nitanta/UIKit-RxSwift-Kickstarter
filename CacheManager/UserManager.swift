//
//  UserManager.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class UserManager {
    
    static let sharedInstance: UserManager = UserManager()
//    var currentUser: Variable<User?> = Variable(nil)
//    var currentToken: Variable<String?> = Variable(nil)
//    private init(){
//        guard let user = UserDefaults.standard.value(forKey: UserDefaultsKey.CurrentUser) as? String else{return}
//        let json = JSON.init(parseJSON: user)
//        currentUser.value =  User(json)
//
//        guard let tokenString = UserDefaults.standard.value(forKey: UserDefaultsKey.AuthorizationToken) as? String else{return}
//        currentToken.value =  tokenString
//
//    }
//
//    func updateCurrentUser(json: JSON){
//        UserDefaults.standard.setValue(json.rawString()!, forKey: UserDefaultsKey.CurrentUser)
//        currentUser.value = User(json)
//    }
//
//
//    func updateAuthorizationToken(token: String){
//        UserDefaults.standard.setValue(token, forKey: UserDefaultsKey.AuthorizationToken)
//        currentToken.value = token
//    }
//
//    func deleteUserDaa(){
//        UserDefaults.standard.removeObject(forKey: UserDefaultsKey.CurrentUser)
//        UserDefaults.standard.removeObject(forKey: UserDefaultsKey.AuthorizationToken)
//    }
//
//    func registerPushNotification(){
//        //        let provider = MoyaProvider<Api>()
//        //        InstanceID.instanceID().instanceID { (result, error) in
//        //            if let result = result{
//        //                provider.request(.registerDevice(token: result.token)) { (result) in
//        //                    switch result {
//        //                    case .success(let val):
//        //                        break
//        //                    case .failure(_):
//        //                        self.registerPushNotification()
//        //                        break
//        //                    }
//        //                }
//        //            }
//        //        }
//    }
//
//    func unregisterPushNotification(){
//        //        let provider = MoyaProvider<Api>()
//        //        InstanceID.instanceID().instanceID { (result, error) in
//        //            if let result = result{
//        //                provider.request(.unregisterDevice(token: result.token)) { (result) in
//        //                    switch result {
//        //                    case .success(let val):
//        //                        break
//        //                    case .failure(_):
//        //                        self.unregisterPushNotification()
//        //                        break
//        //                    }
//        //                }
//        //            }
//        //        }
//    }
    
}
