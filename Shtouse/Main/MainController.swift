//
//  MainController.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 03.12.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import UIKit

class MainController: UITabBarController {
    
    var catalogueTabController: UIViewController!
    var orderListTabController: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        catalogueTabController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        orderListTabController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 0)
        setViewControllers([catalogueTabController, orderListTabController], animated: false)
    }
}
