//
//  Bill.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//


import Foundation

enum billTypes: String {
    case Mobile = "Mobile"
    case Internet = "Internet"
    case Hydro = "Hydro"
}

class Bill
{
    var Id: Int
    var billDate: Date
    var billType: billTypes
    var totalBillAmount: Float
    
    
    init(Id: Int, billDate: Date, billType: billTypes, totalBillAmount: Float)
    {
        self.Id = Id
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
}
