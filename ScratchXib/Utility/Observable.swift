//
//  Bindable.swift
//  ScratchXib
//
//  Created by Vincent O'Sullivan on 03/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import Foundation


/// This class is used to observe a value for changes.
///
class Observable<T> {

    typealias Closure = ((T) -> Void)               // 1

    // MARK: - Properties

    var closure: Closure?                          // 2

    /// The value being observed.
    var value: T {
        didSet {
            closure?(value)
        }
    }

    // MARK:- Initializers

    init(_ value: T) {
        self.value = value
    }

    /// Binds a single closure to this value that is executed whenever this value changes.
    /// - Note: It is executed only when this value changes.
    /// - seeAlso: The bindAndFire function (which also executes immediately).
    ///
    func bind(_ closure: Closure?) {               // 3
        self.closure = closure
    }

    /// Binds a closure function to this value.
    /// - Note: It is executed both immediately and whenever this value changes.
    /// - seeAlso: The bind function (which is not executed immediately).
    ///
    func bindAndFire(_ closure: Closure?) {
        closure?(value)
        bind(closure)
    }
}
