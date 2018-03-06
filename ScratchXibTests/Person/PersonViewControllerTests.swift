//
//  PersonViewControllerTests.swift
//  ScratchXibTests
//
//  Created by Vincent O'Sullivan on 06/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import XCTest
@testable import ScratchXib

class PersonViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testCreatable() {
        let viewModel = DummyPersonViewModel()
        XCTAssertNotNil(PersonViewController(personViewModel: viewModel))
    }

    func testInitCodableThrowsError() {
        try PersonViewController(coder: NSCoder())
    }
}
