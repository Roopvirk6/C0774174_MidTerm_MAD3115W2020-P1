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
    
    static var email = String()
    static var firstName = String()
    static var lastName = String()
    var tempDic:Dictionary<Int,Bill> = [:]
    let cellId = print(String(describing: BillTableViewCell.self))

    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var custDetails: UILabel!
    
    
    @IBOutlet weak var custDetailsName: UILabel!
    
    
    @IBOutlet weak var custDetailsEmail: UILabel!
    
    
    @IBOutlet weak var billTable: UITableView!
    
     var tempvar = Singleton.getInstance()
       
      var cust : Customer?=nil
       
        override func viewDidLoad() {
            
            
            custDetailsName.text = BillViewController.lastName
            custDetailsEmail.text = BillViewController.email
            custDetails.text = BillViewController.firstName
           
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
         
        let t1 = tempvar.returnBillObject(biID: Int(indexPath.row+1))
         
        let tblCell = tableView.dequeueReusableCell(withIdentifier: "billCell", for: indexPath)
        
        
           
         
        //tblCell.textLabel?.text = t1?.customerFName
        return tblCell
      }
    
    
      
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(180.0)
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


