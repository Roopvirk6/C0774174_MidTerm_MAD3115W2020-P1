//
//  Customer.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Customer
{
    var customerID : Int?
    var customerFName: String?
    var customerLName : String?
    var fullName : String{
        return customerFName! + " " + customerLName!
    }
      var customerEmail: String
    
    var billDictionary = Dictionary<Int, Bill>()
    
    init(customerID:Int,customerFName: String,customerLName:String,customerEmail:String, billDictionary : Dictionary<Int, Bill>) {
        self.customerID=customerID
        self.customerFName=customerFName
        self.customerLName=customerLName
        self.customerEmail=customerEmail
        self.billDictionary = billDictionary
    }
    
    
    
}

