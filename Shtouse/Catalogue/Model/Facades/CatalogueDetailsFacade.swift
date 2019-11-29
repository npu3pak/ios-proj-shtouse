//
//  CatalogueDetailsFacade.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import Foundation

protocol CatalogueDetailsFacadeDelegate: AnyObject {
    
}

class CatalogueDetailsFacade {
    
    weak var delegate: CatalogueDetailsFacadeDelegate?
    
    private let repository: CatalogueRepository
    private let merchId: Int
    
    init(repository: CatalogueRepository, merchId: Int) {
        self.repository = repository
        self.merchId = merchId
    }
    
    var title: String {
        return getMerch().title
    }
    
    var description: String {
        return getMerch().description
    }
    
    private func getMerch() -> Merch {
        return repository.getMerch(id: merchId)!
    }
    
    func orderMerch() {
        
    }
}
