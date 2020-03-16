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
    var total : String{return String(TotalAmountToPay)}
    
    
      var customerEmail: String?
    
  
    
  var billDictionary = [Int:Bill]()
    
    var TotalAmountToPay: Float // computed variable
    {
        var TotalAmount: Float = 0.0
        
        for bill in billDictionary
        {
            TotalAmount = TotalAmount + bill.value.totalBillAmount
        }
        return TotalAmount
    }
    func addBill(Bill : Bill)
    {
        billDictionary.updateValue(Bill, forKey: Bill.Id)
    }
    
    init(customerID:Int,customerFName: String,customerLName:String,customerEmail:String) {
        self.customerID=customerID
        self.customerFName=customerFName
        self.customerLName=customerLName
        self.customerEmail=customerEmail
    }
}

