//  PresenterManager.swift
//  Travel
//  Created by George Garcia on 3/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class PresenterManager { // singleton
    
    static let shared = PresenterManager()
    
    private init() { }
    
    enum VC {
        case mainTabBarController
        case onboarding
    }
    
    func show(vc: VC) {
        
        var viewController: UIViewController
        
        switch vc {
        case .mainTabBarController:
            viewController = UIStoryboard(name: Keywords.StoryboardID.main, bundle: nil).instantiateViewController(identifier: Keywords.StoryboardID.mainTabBarController)
        case .onboarding:
            viewController = UIStoryboard(name: Keywords.StoryboardID.main, bundle: nil).instantiateViewController(identifier: Keywords.StoryboardID.onboardingViewController)
        }
                
        if let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
            let window = sceneDelegate.window {
            
            window.rootViewController = viewController
            UIView.transition(with: window, duration: 0.25, options: .transitionCrossDissolve, animations: nil, completion: nil)
        }
    }
}

