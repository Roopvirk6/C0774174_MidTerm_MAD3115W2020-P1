//
//  DataStorage.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class DataStorage
{
    private static let instance = DataStorage()
    private lazy var customerArray: [Customer] = []
    private init(){}
     
    static func getInstance() -> DataStorage{
      return instance
    }
     
    func addCustomer(customer: Customer)
    {
      self.customerArray.append(customer)
    }
     
    func getAllCustomers() -> [Customer]
    {
      return self.customerArray
    }
     
    func loadData()
    {
        customerArray.append(Customer(customerID: 1, customerFName: "roop", customerLName: "virk", customerEmail: "roopvirk@gmail.com"))
        customerArray.append(Customer(customerID: 2, customerFName: "aman", customerLName: "kaur", customerEmail: "aman@gmail.com"))
        
          
    }
}
