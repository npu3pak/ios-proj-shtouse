//
//  OrderListRepository.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import Foundation

class OrderListRepository {
    
    private let service: PRemoteService
    
    init(service: PRemoteService) {
        self.service = service
    }
    
    func getOrderList() -> [Order] {
        return service.getOrderList()
    }
}
