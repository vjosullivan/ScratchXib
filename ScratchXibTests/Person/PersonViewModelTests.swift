//
//  PersonViewModelTests.swift
//  ScratchXibTests
//
//  Created by Vincent O'Sullivan on 06/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import XCTest
@testable import ScratchXib

class PersonViewModelTests: XCTestCase {

    private var model: PersonModelProtocol?
    private var viewModel: PersonViewModel?

    override func setUp() {
        super.setUp()

        model     = DummyPersonModel()
        viewModel = PersonViewModel(personModel: model!)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreatable() {
        XCTAssertNotNil(PersonViewModel(personModel: DummyPersonModel()))
    }

    func testUpdateNameUpdatesModel() {
        viewModel!.updateName("Tom")
        XCTAssertEqual("Tom", model!.name)
    }

    func testDidUpdateNameDoesUpdateObservable() {
        viewModel!.person(model!, didUpdateName: "Anne")
        XCTAssertEqual("Anne", viewModel!.name.value)
    }
}
