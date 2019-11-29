//
//  NewOrderSuccessFacade.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import Foundation

protocol NewOrderSuccessFacadeDelegate: AnyObject {
    
}

class NewOrderSuccessFacade {
    
    weak var delegate: NewOrderSuccessFacadeDelegate?
    
    var address: String {
        return ""
    }
    
    var priceText: String {
        return ""
    }
    
    func close() {
        
    }
}
