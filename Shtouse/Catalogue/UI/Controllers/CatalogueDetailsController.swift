//
//  CatalogueDetailsController.swift
//  Shtouse
//
//  Created by Evgeniy Safronov on 29.11.2019.
//  Copyright © 2019 Evgeniy Safronov. All rights reserved.
//

import UIKit

class CatalogueDetailsController: UIViewController {
    
    var facade: CatalogueDetailsFacade!

    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionTextView.text = facade.description
        title = facade.title
    }
    
    @IBAction func onOrderButtonClick(_ sender: Any) {
        facade.orderMerch()
    }
}

extension CatalogueDetailsController: CatalogueDetailsFacadeDelegate {
    
}
