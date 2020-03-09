//  Helper.swift
//  Travel
//  Created by George Garcia on 3/9/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import Foundation

func delay(durationInSeconds seconds: Double, completion: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
}
