//
//  BaseDynamicViewController.swift
//  table-view
//
//  Created by Rokas on 24/06/2017.
//  Copyright © 2017 Rokas. All rights reserved.
//

import UIKit

protocol BaseDynamicViewControllerDelegate: class {
    var value: Any { get }
}

class BaseDynamicViewController: UIViewController {
    
    weak var delegate: BaseDynamicViewControllerDelegate?
    
    var getValue: (() -> Any) {
        return {
            return self.delegate?.value
        }
    }
    
    var placeHolder: String? {
        set{ getView().textField.placeholder = newValue }
        get{ return getView().textField.placeholder } 
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = BaseDynamicView()
    }
    
    func getView() -> BaseDynamicView {
        return view as! BaseDynamicView
    }

}



























