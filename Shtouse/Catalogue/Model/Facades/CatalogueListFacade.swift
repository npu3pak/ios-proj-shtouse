//
//  CatalogueListFacade.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import Foundation

protocol CatalogueListFacadeDelegate: AnyObject {
    
}

class CatalogueListFacade {
    
    weak var delegate: CatalogueListFacadeDelegate?
    
    private let repository: CatalogueRepository
    
    init(repository: CatalogueRepository) {
        self.repository = repository
    }
    
    var itemsCount: Int {
        return repository.getMerchList().count
    }
    
    func itemTitle(at index: Int) -> String {
        return repository.getMerchList()[index].title
    }
    
    func itemPrice(at index: Int) -> String {
        let price = repository.getMerchList()[index].price
        return price.description
    }
    
    func selectItem(at index: Int) {
        
    }
}
