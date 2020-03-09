//  SettingsVC.swift
//  Travel
//  Created by George Garcia on 3/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class SettingsVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        view.backgroundColor = .systemRed
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIBarButtonItem) {
        print("Logout button tapped!")
        PresenterManager.shared.show(vc: .onboarding)
    }
}
