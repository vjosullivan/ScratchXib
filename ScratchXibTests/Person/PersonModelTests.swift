//
//  PersonModelTests.swift
//  ScratchXibTests
//
//  Created by Vincent O'Sullivan on 06/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import XCTest
@testable import ScratchXib

class PersonModelTests: XCTestCase {

    var testPerson: PersonModel?
    var testDelegate: DummyPersonViewModel?

    override func setUp() {
        super.setUp()

        testPerson   = PersonModel()
        testDelegate = DummyPersonViewModel()
        testPerson?.delegate = testDelegate
    }

    override func tearDown() {
        testDelegate = nil
        testPerson   = nil

        super.tearDown()
    }
    
    func testCreatable() {
        XCTAssertNotNil(testPerson)
    }

    func testUpdateNameStoresName() {
        XCTAssertEqual("", testPerson!.name)
        testPerson!.name = "Bill"
        XCTAssertEqual("Bill", testPerson!.name)
    }

    func testUpdateNameCallsDelegate() {
        XCTAssertEqual(0, testDelegate?.callCount)
        testPerson!.name = "Jack"
        XCTAssertEqual(1, testDelegate?.callCount)
    }
}
