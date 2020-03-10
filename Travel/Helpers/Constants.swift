//  Constants.swift
//  Travel
//  Created by George Garcia on 3/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import Foundation

struct Keywords {
    
    struct Segue {
        static let showOnBoardingScreen  = "showOnboarding"
        static let showLoginSignUpScreen = "showLoginSignup"
    }
    
    struct StoryboardID {
        static let main                     = "Main"
        static let mainTabBarController     = "MainTabBarController"
        static let onboardingViewController = "OnboardingVC"
    }
}


enum TravelImages {
    
    static let mapImage     = "map-travel"
    static let coupleImage  = "couple-travel"
    static let planeImage   = "plane-travel"
    
}

enum CellID {
    
    static let collectionCellID = "OnboardingCell"
    
}
