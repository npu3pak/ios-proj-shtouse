//
//  NewOrderParamsFacade.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import Foundation

protocol NewOrderParamsFacadeDelegate: AnyObject {
    
}

class NewOrderParamsFacade {
    
    weak var delegate: NewOrderParamsFacadeDelegate?
    
    var address: String?
    
    func checkParams() {
        
    }
}
