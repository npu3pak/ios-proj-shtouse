//
//  NewOrderCoordinator.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import SegueCoordinator

class NewOrderCoordinator: SegueCoordinator {
    
    init(rootNavigationController: UINavigationController) {
        super.init(storyboardName: "NewOrder", rootNavigationController: rootNavigationController)
    }
    
    func start() {
        pushInitial(type: NewOrderParamsController.self) { _ in
            
        }
    }
    
    func showBilling() {
        segue("ShowBilling", type: NewOrderBillingController.self) { _ in
            
        }
    }
    
    func showSuccess() {
        segue("ShowSuccess", type: NewOrderSuccessController.self) { _ in
            
        }
    }
}
