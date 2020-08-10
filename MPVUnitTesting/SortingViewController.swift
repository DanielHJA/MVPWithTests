//
//  SortingViewController.swift
//  MPVUnitTesting
//
//  Created Daniel Hjärtström on 2020-07-08.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//
//

import UIKit

class SortingViewController: UIViewController {

	var presenter: SortingPresenterProtocol!

	init() {
        super.init(nibName: nil, bundle: nil)
        presenter = SortingPresenter(self)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

	override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }

}

extension SortingViewController: SortingViewControllerProtocol { 
    
}
