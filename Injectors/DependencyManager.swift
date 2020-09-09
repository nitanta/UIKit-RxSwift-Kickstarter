//
//  DependencyManager.swift
//  NetworkBoilerPlate
//
//  Created by ebpearls on 8/1/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

extension SwinjectStoryboard{
    public static func setup(){
        
        
        defaultContainer.register(AlertViewModel.self){ r in AlertViewModelImplementation() }
        defaultContainer.storyboardInitCompleted(AlertViewController.self) { r, c in
            c.alertViewModel = r.resolve(AlertViewModel.self)
        }
        
        
        defaultContainer.register(DisplayViewModel.self){ r in DisplayViewModelImplementation() }
        defaultContainer.storyboardInitCompleted(DisplayViewController.self) { r, c in
            c.displayViewModel = r.resolve(DisplayViewModel.self)
        }
        
        defaultContainer.register(ScrollerViewModel.self){ r in ScrollerViewModelImplementation() }
        defaultContainer.storyboardInitCompleted(ScrollerViewController.self) { r, c in
            c.scrollerViewModel = r.resolve(ScrollerViewModel.self)
        }
    }
}
