//
//  PersonModel.swift
//  ScratchXib
//
//  Created by Vincent O'Sullivan on 03/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import Foundation

protocol PersonModelProtocol {
    var name: String { get set }
    var delegate: PersonModelDelegate? { get set }
}

class PersonModel: PersonModelProtocol {

    // MARK: - Properties.
    
    var delegate: PersonModelDelegate?

    public var name: String = "" {
        didSet {
            delegate?.person(self, didUpdateName: self.name)
        }
    }
}

protocol PersonModelDelegate {
    func person(_ person: PersonModelProtocol, didUpdateName nam: String)
}
