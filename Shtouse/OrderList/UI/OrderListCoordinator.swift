//
//  OrderListCoordinator.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import SegueCoordinator

class OrderListCoordinator: SegueCoordinator {
    
    init(rootNavigationController: UINavigationController) {
        super.init(storyboardName: "OrderList", rootNavigationController: rootNavigationController)
    }
    
    func start() {
        pushInitial(type: OrderListController.self) { _ in
            
        }
    }
}
