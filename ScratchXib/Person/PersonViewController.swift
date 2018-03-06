//
//  PersonViewController.swift
//  ScratchXib
//
//  Created by Vincent O'Sullivan on 03/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {

    // MARK: - Properties

    private var personViewModel: ObservablePersonViewModel

    private var personView: PersonView {
        return view as! PersonView
    }

    // MARK: - Initializers

    init(personViewModel: ObservablePersonViewModel) {
        self.personViewModel = personViewModel
        super.init(nibName: "PersonViewController", bundle: nil)
        bindViewModel()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UIViewController Functions

    override func loadView() {
        view = PersonView.createPersonView()
    }

    override func viewDidLoad() {
        personView.input.becomeFirstResponder()
    }

    // MARK: - Actions

    @IBAction func nameChanged(_ sender: UITextField) {
        personViewModel.updateName(sender.text ?? "")
    }

    // MARK: - Local functions

    private func bindViewModel() {
        personViewModel.name.bindAndFire { [unowned self] in
            self.personView.name.text = $0
        }
    }
}
