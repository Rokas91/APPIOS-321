//
//  RootViewController.swift
//  table-view
//
//  Created by Rokas on 24/06/2017.
//  Copyright © 2017 Rokas. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    let tableViewController = TableViewController()
    
    var callBack: (() -> (Any))?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = RootView()
        
        tableViewController.setTable(getView().tableView)
        
        tableViewController.add(ConcreteTableViewCell(onChange: { callBack in
            self.callBack = callBack
        }, controller: { dynamicViewController in
            dynamicViewController.placeHolder = "Enter"
        }))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let callBack = callBack {
            getView().label.text = "\(callBack() as? Int)"
        }
    }
    
    private func getView() -> RootView {
        return view as! RootView
    }

}
