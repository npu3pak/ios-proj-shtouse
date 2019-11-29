//
//  CatalogueController.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import UIKit

class CatalogueListController: UITableViewController {
    
    var facade: CatalogueListFacade!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return facade.itemsCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Item")!
        cell.textLabel?.text = facade.itemTitle(at: indexPath.row)
        cell.detailTextLabel?.text = facade.itemPrice(at: indexPath.row)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        facade.selectItem(at: indexPath.row)
    }
}

extension CatalogueListController: CatalogueListFacadeDelegate {
    
}
