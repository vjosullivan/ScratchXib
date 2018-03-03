//
//  PersonViewModel.swift
//  ScratchXib
//
//  Created by Vincent O'Sullivan on 03/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import Foundation

class PersonViewModel {

    // MARK: - Properties.

    private let personModel: PersonModel

    public var name: String {
        get {
            return personModel.name
        }
        set {
            personModel.name = newValue
        }
    }

    // MARK: - Initializers.

    init(personModel: PersonModel) {
        self.personModel = personModel
    }
}
