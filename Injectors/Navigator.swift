//
//  Navigator.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard{
    func instrancer(storyboard: String, controller: String) -> UIViewController{
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: controller)
        return vc
    }
}
