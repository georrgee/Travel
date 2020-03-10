//  Slide.swift
//  Travel
//  Created by George Garcia on 3/10/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

struct Slide {
    let imageName:   String
    let title:       String
    let description: String
    
    static let collection: [Slide] = [
        Slide(imageName: TravelImages.mapImage, title: "Welcome to Travel!", description: "Travel allows you to get better info around the world, make new friends, and create memorable experiences"),
        Slide(imageName: TravelImages.coupleImage, title: "Connect Socially", description: "Connect across continents to strangers via app"),
        Slide(imageName: TravelImages.planeImage, title: "Safe And Secured", description: "Each trip is planned according to extreme safety standards to ensure passenger safety")
    ]
}
