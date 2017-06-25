//
//  ConcreteDynamicViewController.swift
//  table-view
//
//  Created by Rokas on 25/06/2017.
//  Copyright © 2017 Rokas. All rights reserved.
//

import UIKit

class ConcreteDynamicViewController: BaseDynamicViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
    }
}

extension ConcreteDynamicViewController: BaseDynamicViewControllerDelegate {
    var value: Any {
//        return getView().textField.text as Any
        return Int(20) as Any
    }
}
