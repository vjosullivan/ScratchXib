//
//  DummyPersonViewModel.swift
//  ScratchXibTests
//
//  Created by Vincent O'Sullivan on 06/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import Foundation
@testable import ScratchXib

class DummyPersonViewModel: ObservablePersonViewModel, PersonModelDelegate {
    var name: Observable<String>

    func updateName(_ name: String) {
        // Not used.
    }

    init() {
        self.name = Observable("Zoe")
    }
    var callCount = 0

    func person(_ person: PersonModelProtocol, didUpdateName nam: String) {
        callCount += 1
    }
}
