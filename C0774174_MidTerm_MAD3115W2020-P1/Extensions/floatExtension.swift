//
//  floatExtension.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
extension Float
{
    public func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}
