//
//  MPVUnitTestingTests.swift
//  MPVUnitTestingTests
//
//  Created by Daniel Hjärtström on 2020-07-02.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import XCTest
@testable import MPVUnitTesting

class MPVUnitTestingTests: XCTestCase {

    var presenter: ViewControllerPresenter!

    override func setUp() {
        presenter = ViewControllerPresenter(self)
    }

    func testMultiplication() {
        let value = presenter.multiply(lhs: 5, rhs: 5)
        XCTAssert(value == 25)
    }
    
    func testFetchTrue() {
        presenter.fetchSomething(true)
    }
    
    func testfetchFalse() {
        presenter.fetchSomething(false)
    }
    
}

extension MPVUnitTestingTests: ViewControllerProtocol {
    
    func fetchSuccess(_ status: Bool) {
        XCTAssert(status == true)
    }
    
    func fetchFailure(_ status: Bool) {
        XCTAssert(status == false)
    }
    
}
