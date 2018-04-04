//
//  ViewController.swift
//  ExpensesTableView
//
//  Created by i332817 on 03/04/2018.
//  Copyright © 2018 SAP Concur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Did you connect it to storyboard?
    @IBOutlet weak var tableView: UITableView!
    
    // Data
    var expenses: [ExpenseData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Generate random data
        for _ in (1...10) {
            expenses.append(ExpenseData(type: .randomType(), amount: Double(arc4random_uniform(130))))
        }
        
        // Something important should be added here, how does our tableView should talk to this view controller?
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        tableView.setEditing(editing, animated: animated)
        if editing {
            // insert Add Cell
        }
        else {
            // delete Add Cell
        }
        
    }
}

extension ViewController: UITableViewDelegate {
    // Todo:
}

extension ViewController: UITableViewDataSource {
    // Todo:
}

