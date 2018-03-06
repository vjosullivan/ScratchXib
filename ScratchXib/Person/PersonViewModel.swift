//
//  PersonViewModel.swift
//  ScratchXib
//
//  Created by Vincent O'Sullivan on 03/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import Foundation

protocol ObservablePersonViewModel {
    var name: Observable<String> { get }

    func updateName(_ name: String)
}

class PersonViewModel: ObservablePersonViewModel {

    // MARK: - Properties

    private var personModel: PersonModelProtocol

    public let name: Observable<String>

    // MARK: - Initializers

    init(personModel: PersonModelProtocol) {
        self.personModel = personModel
        name = Observable(self.personModel.name)
        self.personModel.delegate = self
    }
}

extension PersonViewModel {

    // MARK: Functions that update the model.

    public func updateName(_ name: String) {
        personModel.name = name
    }
}

extension PersonViewModel: PersonModelDelegate {

    // MARK: - Functions that observe the model.

    func person(_ person: PersonModelProtocol, didUpdateName name: String) {
        self.name.value = name
    }
}
