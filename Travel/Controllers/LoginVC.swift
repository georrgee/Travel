//  LoginVC.swift
//  Travel
//  Created by George Garcia on 3/18/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit
import MBProgressHUD

class LoginVC: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmationTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    weak var delegate: OnboardingDelegate?
    
    private let isSuccessfulLogin = true
    
    private enum PageType {
        case login
        case signUp
    }
    
    private var errorMessage: String? {
        didSet {
            showErrorMessage(text: errorMessage)
        }
    }
    
    private var currentPageType: PageType = .login { // default
        didSet { // didSet: property observer - everything in this block can be caught
            setupViewsFor(pageType: currentPageType)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewsFor(pageType: .login)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func setupViewsFor(pageType: PageType) {
        errorMessage                            = nil
        passwordConfirmationTextField.isHidden  = pageType == .login
        signUpButton.isHidden                   = pageType == .login
        forgotPasswordButton.isHidden           = pageType == .signUp
        loginButton.isHidden                    = pageType == .signUp
    }
    
    private func showErrorMessage(text: String?) {
        errorLabel.isHidden = text == nil
        errorLabel.text     = text
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func segementedControlChanged(_ sender: UISegmentedControl) {
        
        currentPageType = sender.selectedSegmentIndex == 0 ? .login : .signUp
    }
    
    @IBAction func signupButtonTapped(_ sender: Any) {
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        
        delay(durationInSeconds: 2.0) {
            MBProgressHUD.showAdded(to: self.view, animated: true)
            if self.isSuccessfulLogin {
                self.delegate?.showMainTabBarController()
            } else {
                self.errorMessage = "Your email or password is invalid. Please try again"
            }
        }
    }
}

        // This logic below is the same as what you see on line 42
//        if sender.selectedSegmentIndex == 0 {
//            currentPageType = .login
//        } else {
//            currentPageType = .signUp
//        }
