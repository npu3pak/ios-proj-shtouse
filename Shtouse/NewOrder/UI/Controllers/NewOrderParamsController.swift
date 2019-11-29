//
//  NewOrderParamsController.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import UIKit

class NewOrderParamsController: UIViewController {
    
    var facade: NewOrderParamsFacade!

    @IBOutlet weak var addressTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onContinueButtonClick(_ sender: Any) {
        facade.address = addressTextField.text
        facade.checkParams()
    }
}

extension NewOrderParamsController: NewOrderParamsFacadeDelegate {
    
}
