//
//  Customer.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
public class Customer
{
    
      var customerId : Int
      var firstName : String
      var lastName : String
      var emailId : String
      // var billDictionary = [Int:Bill]()
      // var totalBillAmount: Float = 0.0
      
      init(customerId: Int, firstName: String, lastName: String, emailId : String)
      {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
         
      }
}
