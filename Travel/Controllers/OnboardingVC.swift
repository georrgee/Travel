//  OnboardingVC.swift
//  Travel
//  Created by George Garcia on 3/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class OnboardingVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.backgroundColor = .systemRed
    }
    
    @IBAction func getStartedButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: Keywords.Segue.showLoginSignUpScreen, sender: nil)
    }
}
