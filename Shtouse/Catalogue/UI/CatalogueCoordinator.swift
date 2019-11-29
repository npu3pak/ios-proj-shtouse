//
//  CatalogueCoordinator.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import SegueCoordinator

class CatalogueCoordinator: SegueCoordinator {
    
    init(rootNavigationController: UINavigationController) {
        super.init(storyboardName: "Catalogue", rootNavigationController: rootNavigationController)
    }
    
    func start() {
        pushInitial(type: CatalogueListController.self) { _ in
            
        }
    }
    
    func showDetails() {
        segue("ShowDetails", type: CatalogueDetailsController.self) { _ in
            
        }
    }
}
