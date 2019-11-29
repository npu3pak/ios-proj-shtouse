//
//  OrderListFacade.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import Foundation

protocol OrderListFacadeDelegate: AnyObject {
    
}

class OrderListFacade {
    
    weak var delegate: OrderListFacadeDelegate?
    
    private var repository: OrderListRepository
    
    init(repository: OrderListRepository) {
        self.repository = repository
    }
    
    var itemsCount: Int {
        return repository.getOrderList().count
    }
    
    func itemTitle(at index: Int) -> String {
        return repository.getOrderList()[index].merch.title
    }
    
    func itemStatusText(at index: Int) -> String {
        let status = repository.getOrderList()[index].status
        switch status {
        case .new:
            return "new"
        case .paid:
            return "paid"
        case .accepted:
            return "accepted"
        }
    }
}
