//
//  TableViewController.swift
//  table-view
//
//  Created by Rokas on 24/06/2017.
//  Copyright © 2017 Rokas. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var cells: [BaseTableViewCell] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func setTable(_ tableView: UITableView) {
        self.tableView = tableView
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func add(_ cell: BaseTableViewCell) {
        cells.append(cell)
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return cells.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cells[indexPath.row]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let topController = UIApplication.topViewController() {
            topController.present(cells[indexPath.row].dynamicViewController, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}
