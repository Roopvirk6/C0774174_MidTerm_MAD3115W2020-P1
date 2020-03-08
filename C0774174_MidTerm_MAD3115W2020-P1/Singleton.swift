//
//  Singleton.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//
//

import Foundation

class Singleton: NSObject
{
     private var customerDictionary  = [Int:Customer]()
    
    private static var obj = Singleton()
    
    
    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return obj
    }
    
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let c = customerDictionary.count + 1
        
        let temp = Customer(customerID: c, customerFName: First_Name, customerLName: Last_Name, customerEmail: email)
        self.AddCustomer(customer: temp)
    }
    
    func returnCustObject(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if custID == k
            {
                return v
            }
        }
        return nil
        
    }
    
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    
    func createCust()
    {
        
    let c1 = Customer(customerID: 1, customerFName: "Monika", customerLName: "Sharma", customerEmail: "ms@gmail.com ")
        AddCustomer(customer: c1)
        
        let c2 = Customer(customerID: 2, customerFName: "IKROOP", customerLName: "Virk", customerEmail: "ikroopb@gmail.com ")
        AddCustomer(customer: c2)
    }
    
    

    
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerID!)
    }
    func printdata()
    {
        for i in customerDictionary.values
        {
            print(i.customerFName!)
        }
    }
    

}
