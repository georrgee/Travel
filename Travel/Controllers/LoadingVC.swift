//  LoadingVC.swift
//  Travel
//  Created by George Garcia on 3/1/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class LoadingVC: UIViewController {
    
    private let isUserLoggedIn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        delay(durationInSeconds: 2.0) {
            self.showInitialView()
        }
    }
    
    private func showInitialView() { // if user is logged in, show to main tab bar else, show onboarding controller
        
        if isUserLoggedIn {
            print(isUserLoggedIn)
            PresenterManager.shared.show(vc: .mainTabBarController)
        } else {
            print(isUserLoggedIn)
            performSegue(withIdentifier: Keywords.Segue.showOnBoardingScreen, sender: nil)
        }
    }
}

// Stopped at Section 2: Lecture 4
// Start on Lecture 5: General Refactoring
