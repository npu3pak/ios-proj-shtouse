//
//  NewOrderBillingController.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import UIKit

class NewOrderBillingController: UIViewController {
    
    var facade: NewOrderBillingFacade!

    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceLabel.text = facade.priceText
    }
    
    @IBAction func onPayButtonClick(_ sender: Any) {
        facade.pay()
    }
}

extension NewOrderBillingController: NewOrderBillingFacadeDelegate {
    
}
