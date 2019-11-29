//
//  NewOrderSuccessController.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import UIKit

class NewOrderSuccessController: UIViewController {
    
    var facade: NewOrderSuccessFacade!

    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addressLabel.text = facade.address
        priceLabel.text = facade.priceText
    }
    
    @IBAction func onCloseButtonClick(_ sender: Any) {
        facade.close()
    }
}

extension NewOrderSuccessController: NewOrderSuccessFacadeDelegate {
    
}
