//
//  CatalogueRepository.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import Foundation

class CatalogueRepository {
    
    private let service: PRemoteService
    
    init(service: PRemoteService) {
        self.service = service
    }
    
    func getMerchList() -> [Merch] {
        return service.getMerchList()
    }
    
    func getMerch(id: Int) -> Merch? {
        return service.getMerch(id: id)
    }
}
