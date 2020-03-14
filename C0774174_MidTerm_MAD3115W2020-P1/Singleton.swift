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
    
    private var billDictionary = [Int:Bill]()
    
    private static var obj = Singleton()
    
    
    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return obj
    }
    
    func addCustomerToDictionary(c: Customer) {
        customerDictionary.updateValue(c, forKey: c.customerID)
    }
    
   func addBillToDictionary(b: Bill)
   {
    billDictionary.updateValue(b, forKey: b.billId)
   }
    func addNewBill(billDate : String, billType : Bill.biTypes)
    {
        let dId = billDictionary.count + 1
        var d = Bill(billId: dId, billDate: billDate, billType: billType)
        self.AddBill(bill: d)
        print(d.billId)
    }
    
    
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let cId = customerDictionary.count + 1
        
        var c = Customer(customerID: cId, customerFName: First_Name, customerLName: Last_Name, customerEmail: email)
        self.AddCustomer(customer: c)
        //addCustomerToDictionary(c: c)
        print(c.customerFName)
        
        
    }
    
    func returnBillObject(biID : Int) -> Bill?
    {
        for (k,v) in billDictionary
        {
            if biID == k
            {
                return v
            }
        }
        return nil
        
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
        
     let i1 = Internet(providerName: "Rogers", gbUsed: 500, billAmount: 56.0, billId: 1, billDate: "Wednesday, 19 June, 2019", billType: .Internet)
        AddBill(bill: i1)
        let m1 = Mobile(manufacturerName: "galaxy", planName: "prepaid", internetUsed: 10, minutesUsed: 356, billAmount: 500, billId: 2, billType: .Mobile, billDate: "Wednesday, 19 June, 2019")
        AddBill(bill: m1)
        let h1 = Hydro(billId: 3, billDate: "Wednesday, 19 June, 2019", billType: .Hydro, agencyName:  "hydro canada", unitConsumed: 34, billAmount: 678)
        AddBill(bill: h1)
        let c2 = Customer(customerID: 2, customerFName: "IKROOP", customerLName: "Virk", customerEmail: "ikroopb@gmail.com ")
        AddCustomer(customer: c2)
        let c3 = Customer(customerID: 3, customerFName: "AMAN", customerLName: "Kaur", customerEmail: "amankaur@gmail.com ")
        AddCustomer(customer: c2)
        
        
        
        addCustomerToDictionary(c: c1)
        addCustomerToDictionary(c: c2)
        addCustomerToDictionary(c: c3)
        addBillToDictionary(b: i1)
        addBillToDictionary(b: m1)
        addBillToDictionary(b: h1)
        
    }
    
    

    
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerID)
    }
    func AddBill(bill : Bill)
    {
        billDictionary.updateValue(bill, forKey: bill.billId)
    }
    
    
    func printdata()
    {
        for i in customerDictionary.values
        {
            print(i.customerFName)
        }
        for n in billDictionary.values
        {
            print(n.billType)
        }
    }
    

}
