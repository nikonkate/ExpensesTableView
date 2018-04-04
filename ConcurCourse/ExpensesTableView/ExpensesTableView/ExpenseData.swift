//
//  ExpenseData.swift
//  ExpensesTableView
//
//  Created by i332817 on 04/04/2018.
//  Copyright © 2018 SAP Concur. All rights reserved.
//

import Foundation

public class ExpenseData {
    
    enum ExpenseType: String {
        case Fuel
        case Groceries
        case Gifts
        case Taxi
        case Flights
        
        static func randomType() -> ExpenseType {
            let index = Int(arc4random_uniform(5))
            let types = [ExpenseType.Fuel, ExpenseType.Groceries, ExpenseType.Gifts, ExpenseType.Taxi, ExpenseType.Flights]
            return types[index]
        }
    }
    
    var type: ExpenseType = .Fuel
    var amount: Double = 0.0
    
    init(type: ExpenseType, amount: Double) {
        self.type = type
        
        guard amount > 0 else {
            return
        }
        
        self.amount = amount
    }
}
