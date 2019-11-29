//
//  RemoteServiceStub.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import Foundation

class RemoteServiceStub {
    
    private let merchList = [
        Merch(
            id: 1,
            title: "Memory Card",
            description: "Samsung 256GB 100MB/s (U3) MicroSDXC EVO Select Memory Card with Full-Size Adapter (MB-ME256GA/AM)",
            price: 27.99
        ),
        Merch(
            id: 2,
            title: "Glasses",
            description: "ANRRI Blue Light Blocking Glasses Lightweight Eyeglasses Frame Filter Blue Ray Computer Game Glasses",
            price: 21.95
        ),
        Merch(
            id: 3,
            title: "Toy",
            description: "Bedtime Originals Twinkle Toes Pink Elephant Plush, Hazel",
            price: 4.99
        )
    ]
    
    private var orders = [Order]()
}

extension RemoteServiceStub: PRemoteService {
    
    func getMerchList() -> [Merch] {
        return merchList
    }
    
    func getMerch(id: Int) -> Merch? {
        return merchList.first { $0.id == id }
    }
    
    func addNewOrder(_ order: Order) {
        orders.insert(order, at: 0)
    }
    
    func getOrderList() -> [Order] {
        return orders
    }
}
