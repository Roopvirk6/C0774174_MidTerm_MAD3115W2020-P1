//
//  extensionInt.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
extension Int{
  
        public func unit() -> String
        {
            return String.init(format: "%d Units", self)
        }
        public func data() -> String
        {
            return String.init(format: "%d GB", self)
        }
        public func minutes() -> String
        {
            return String.init(format: "%d Minute(s)", self)
        }
    
    
}
