//
//  SortingPresenter.swift
//  MPVUnitTesting
//
//  Created Daniel Hjärtström on 2020-07-08.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//
//

import Foundation

class SortingPresenter: NSObject {

    weak var controller: SortingViewControllerProtocol?

    required init(_ controller: SortingViewControllerProtocol) {
        super.init()
        self.controller = controller
    }
    
    func viewDidLoad() {

    }
}

extension SortingPresenter: SortingPresenterProtocol {
    
}


