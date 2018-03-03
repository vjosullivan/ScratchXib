//
//  PersonViewController.swift
//  ScratchXib
//
//  Created by Vincent O'Sullivan on 03/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {

    // MARK: - Properties.

    private let personViewModel: PersonViewModel

    private var personView: PersonView {
        return view as! PersonView
    }

    // MARK: - Initializers.

    init(personViewModel: PersonViewModel) {
        self.personViewModel = personViewModel
        super.init(nibName: "PersonViewController", bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UIViewController functions.

    override func loadView() {
        view = PersonView.createPersonView()
    }

    override func viewDidLoad() {
        personView.name.text = personViewModel.name
    }
}
