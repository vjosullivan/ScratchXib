//
//  PersonView.swift
//  ScratchXib
//
//  Created by Vincent O'Sullivan on 03/03/2018.
//  Copyright © 2018 Vincent O'Sullivan. All rights reserved.
//

import UIKit

class PersonView: UIView {

    // MARK: - Static Functions

    class func createPersonView() -> PersonView {
        let personNib = UINib(nibName: "PersonView", bundle: nil)
        return personNib.instantiate(withOwner: nil, options: nil)[0] as! PersonView
    }

    // MARK: - Outlets

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var name: UILabel!

    // MARK: - Initializers
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
