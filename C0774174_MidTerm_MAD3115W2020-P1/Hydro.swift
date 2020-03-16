//
//  Hydro.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Hydro: Bill
{
    var agencyName: String
    var unitconsumed: Int
    
    init(Id: Int, billDate: Date, billType: billTypes, totalBillAmount: Float, agencyName: String, unitconsumed: Int)
    {
        self.agencyName = agencyName
        self.unitconsumed = unitconsumed
        
        super.init(Id: Id, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
}
