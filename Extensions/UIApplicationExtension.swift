//
//  UIApplicationExtension.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/9/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import UIKit
import UserNotifications

extension UIApplication{
    var handleBadge: Void{
        UIApplication.shared.applicationIconBadgeNumber += 1
    }
    
    var clearBadge: Void{
        if #available(iOS 10.0, *) {
            self.applicationIconBadgeNumber = 0
            let center = UNUserNotificationCenter.current()
            center.removeAllPendingNotificationRequests()
            center.removeAllDeliveredNotifications()
        } else {
            self.applicationIconBadgeNumber = 0
            UIApplication.shared.cancelAllLocalNotifications()
        }
    }
}
