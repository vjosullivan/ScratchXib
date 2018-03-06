//
//  DummyPersonModel.swift
//  ScratchXibTests
//
//  Created by Vincent O'Sullivan on 06/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import Foundation
@testable import ScratchXib

class DummyPersonModel: PersonModelProtocol {
    var delegate: PersonModelDelegate?
    
    var name = ""
}
