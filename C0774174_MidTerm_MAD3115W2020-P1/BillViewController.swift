//
//  BillViewController.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class BillViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    
    @IBOutlet weak var custDetails: UILabel!
    
    
    @IBOutlet weak var custDetailsName: UILabel!
    
    
    @IBOutlet weak var custDetailsEmail: UILabel!
    
    
    @IBOutlet weak var billTable: UITableView!
    
     var tempvar = Singleton.getInstance()
       
      var cust : Customer?=nil
       
        override func viewDidLoad() {
           
          if cust != nil
          {
            // customerID.text = c?.customerId
            custDetailsName.text = cust?.customerFName
            custDetailsEmail.text = cust?.customerEmail
             
             
            billTable.delegate = self
            billTable.dataSource = self
          }
        }
       
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
      }
       
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let t1 = tempvar.returnCustObject(custID: Int(indexPath.row+1))
         
        let tblCell = tableView.dequeueReusableCell(withIdentifier: "billCell", for: indexPath)
         
        tblCell.textLabel?.text = t1?.customerFName
        return tblCell
      }
      
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


