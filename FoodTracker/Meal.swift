//
//  Meal.swift
//  FoodTracker
//
//  Created by Alan Heezen on 8/3/20.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // Fail if bad input
        guard !name.isEmpty else {
            return nil
        }
        guard (0 <= rating) && (rating <= 5) else {
            return nil
        }
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
