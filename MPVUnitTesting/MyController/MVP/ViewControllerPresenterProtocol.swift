//
//  ViewControllerPresenterProtocol.swift
//  MPVUnitTesting
//
//  Created by Daniel Hjärtström on 2020-07-02.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

protocol ViewControllerPresenterProtocol: class {
    func multiply(lhs: Double, rhs: Double) -> Double
    func fetchSomething(_ success: Bool)
}
