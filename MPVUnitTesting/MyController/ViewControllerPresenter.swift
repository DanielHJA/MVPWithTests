//
//  ViewControllerPresenter.swift
//  MPVUnitTesting
//
//  Created by Daniel Hjärtström on 2020-07-02.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

class ViewControllerPresenter: NSObject {
    
    weak var controller: ViewControllerProtocol?

    required init(_ controller: ViewControllerProtocol) {
        super.init()
        self.controller = controller
    }
    
}

extension ViewControllerPresenter: ViewControllerPresenterProtocol {
    
    func multiply(lhs: Double, rhs: Double) -> Double {
        return lhs * rhs
    }
    
    func fetchSomething(_ success: Bool) {
        if success {
            controller?.fetchSuccess(true)
        } else {
            controller?.fetchFailure(false)
        }
    }
    
}
