//  OnboardingCell.swift
//  Travel
//  Created by George Garcia on 3/10/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class OnboardingCell: UICollectionViewCell {
    
    @IBOutlet weak var slideImageView: UIImageView!
    
    func configure(image: UIImage) {
        slideImageView.image = image
    }
}
