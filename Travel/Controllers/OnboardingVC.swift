//  OnboardingVC.swift
//  Travel
//  Created by George Garcia on 3/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

protocol OnboardingDelegate: class {
    func showMainTabBarController()
}

class OnboardingVC: UIViewController {
    
    @IBOutlet weak var collectionView:   UICollectionView!
    @IBOutlet weak var titleLabel:       UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pageControl:      UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupPageControl()
        configureCollectionView()
    }
    
    private func setupViews() {
        view.backgroundColor = .systemGroupedBackground
    }
    
    private func configureCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView.backgroundColor = .systemGroupedBackground
        collectionView.collectionViewLayout = layout
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
    }
    
    private func showIndex(atIndex index: Int) {
        let slide             = Slide.collection[index]
        titleLabel.text       = slide.title
        descriptionLabel.text = slide.description
    }
    
    private func setupPageControl() {
        pageControl.numberOfPages = Slide.collection.count
    }

    
    @IBAction func getStartedButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: Keywords.Segue.showLoginSignUpScreen, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Keywords.Segue.showLoginSignUpScreen {
            if let destination = segue.destination as? LoginVC {
                destination.delegate = self
            }
        }
    }
}


extension OnboardingVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellID.collectionCellID, for: indexPath) as! OnboardingCell
        let imageName = Slide.collection[indexPath.item].imageName
        let image = UIImage(named: imageName) ?? UIImage()
        cell.configure(image: image)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Slide.collection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let index = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
        showIndex(atIndex: index)
        self.pageControl.currentPage = index
    }
}

extension OnboardingVC: OnboardingDelegate {
    
    func showMainTabBarController() {
        //dismiss login view controller first
        // then show main tab bar
        if let loginViewController = self.presentedViewController as? LoginVC {
            loginViewController.dismiss(animated: true) {
                PresenterManager.shared.show(vc: .mainTabBarController)
            }
        }
    }
}
