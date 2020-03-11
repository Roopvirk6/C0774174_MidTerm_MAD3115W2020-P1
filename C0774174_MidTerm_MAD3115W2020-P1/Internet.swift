//
//  Internet.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Internet : Bill
{
    var providerName : String
    var gbUsed : Float
    var billAmount : Float
   
    init(providerName : String, gbUsed : Float, billAmount : Float, billId: Int, billDate: String, billType: biTypes) {
        self.providerName = providerName
        self.gbUsed = gbUsed
        self.billAmount = billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)

    }
    
    override func display()
    {
        print("*****************************")
        print("       Bill Details      ")
        print("***************************************")
        print("Bill Id : \(billId)")
        print("Bill Type : \(billType)")
        print("Bill Date : \(billDate)")
        print("Provider Name : \(providerName)")
        print("Data Used : \(gbUsed) GB")
        print("Bill Amount : $ \(billAmount)")
        
    }
    
}
