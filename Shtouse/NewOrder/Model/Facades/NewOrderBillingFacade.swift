//
//  NewOrderBillingFacade.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import Foundation

protocol NewOrderBillingFacadeDelegate: AnyObject {
    
}

class NewOrderBillingFacade {
    
    weak var delegate: NewOrderBillingFacadeDelegate?
    
    var priceText: String {
        return ""
    }
    
    func pay() {
        
    }
}
