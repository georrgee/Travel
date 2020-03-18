//  SettingsVC.swift
//  Travel
//  Created by George Garcia on 3/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit
import MBProgressHUD

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
        MBProgressHUD.showAdded(to: view, animated: true)
        delay(durationInSeconds: 0.5) {
            MBProgressHUD.hide(for: self.view, animated: true)
            PresenterManager.shared.show(vc: .onboarding)
        }
    }
}
