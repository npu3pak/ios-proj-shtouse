//
//  MainCoordinator.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 03.12.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import SegueCoordinator

class MainCoordinator: SegueCoordinator {
    
    private var catalogueCoordinator = CatalogueCoordinator(rootNavigationController: UINavigationController())
    private var orderListCoordinator = OrderListCoordinator(rootNavigationController: UINavigationController())
    
    init(rootNavigationController: UINavigationController) {
        super.init(storyboardName: "Main", rootNavigationController: rootNavigationController)
        rootNavigationController.setNavigationBarHidden(true, animated: false)
        catalogueCoordinator.start()
        orderListCoordinator.start()
    }
    
    func start() {
        setInitial(type: MainController.self) {
            $0.catalogueTabController = catalogueCoordinator.rootNavigationController
            $0.orderListTabController = orderListCoordinator.rootNavigationController
        }
    }
}
