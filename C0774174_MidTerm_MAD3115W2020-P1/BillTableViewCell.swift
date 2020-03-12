//
//  BillTableViewCell.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class BillTableViewCell: UITableViewCell
{
    
    @IBOutlet weak var billID: UITextField!
    
    
    @IBOutlet weak var billType: UITextField!
    
    
    @IBOutlet weak var billDate: UITextField!
    
    
    
    @IBOutlet weak var billAmount: UITextField!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
