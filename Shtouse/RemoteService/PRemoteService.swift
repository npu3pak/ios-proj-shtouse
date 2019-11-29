//
//  PRemoteService.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

protocol PRemoteService {
    func getMerchList() -> [Merch]
    func getMerch(id: Int) -> Merch?
    func addNewOrder(_ order: Order)
    func getOrderList() -> [Order]
}
