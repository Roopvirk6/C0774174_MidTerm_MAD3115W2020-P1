//
//  Bill.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Bill
{
    var billId : Int
    var billDate : String
    enum biTypes: String {
        case Internet
        case Mobile
        case Hydro
    }
    var billType : biTypes
    init(billId : Int , billDate : String, billType : biTypes) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }
}
