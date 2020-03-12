//
//  extensionInt.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
extension Int{
    func concatUnits()->String
    {
        return "\(self) Units"
    }
    func conactGB() ->String
    {
        return " \(self) GB"
    }
    func concatMin() -> String
    {
        return " \(self) Minutes"
    }
    func intToString() -> String
    {
        return String(self)
    }
    
}
