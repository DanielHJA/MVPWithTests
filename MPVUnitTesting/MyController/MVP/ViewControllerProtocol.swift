//
//  ViewControllerProtocol.swift
//  MPVUnitTesting
//
//  Created by Daniel Hjärtström on 2020-07-02.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit

protocol ViewControllerProtocol: class {
    func fetchSuccess(_ status: Bool)
    func fetchFailure(_ status: Bool)
}
