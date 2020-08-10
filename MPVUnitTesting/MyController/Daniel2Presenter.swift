//
//  Daniel2Presenter.swift
//  MPVUnitTesting
//
//  Created Daniel Hjärtström on 2020-07-08.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//
//

import Foundation

// MARK: View -
protocol Daniel2ViewProtocol: class {

}

// MARK: Presenter -
protocol Daniel2PresenterProtocol: class {
	var view: Daniel2ViewProtocol? { get set }
    func viewDidLoad()
}

class Daniel2Presenter: Daniel2PresenterProtocol {

    weak var view: Daniel2ViewProtocol?

    func viewDidLoad() {

    }
}
