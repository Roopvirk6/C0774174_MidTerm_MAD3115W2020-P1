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
    
    var c : Customer?=nil
    override func viewDidLoad() {
        super.viewDidLoad()
        if c != nil
        {

            custDetails.text = c?.customerID.intToString()
            custDetailsName.text = c?.customerFName
            custDetailsEmail.text = c?.customerEmail
        
           billTable.dataSource = self
            billTable.delegate = self
        }

       
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (c?.billDictionary.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillCell", for: indexPath) as! BillTableViewCell
        let billTemp = c!.returnBillArray()
        
        let bTemp = billTemp[indexPath.row].billType.rawValue
        
        if bTemp.elementsEqual("Mobile")
        {
            let tObj =  billTemp[indexPath.row] as! Mobile
            cell.billID.text = tObj.billId.intToString()
            cell.billType.text = bTemp
            cell.billDate.text = tObj.billDate
            
            cell.billAmount.text = String(tObj.billAmount)
        }
        if bTemp.elementsEqual("Internet")
        {
            let tObj =  billTemp[indexPath.row] as! Internet
            cell.billID.text = tObj.billId.intToString()
            cell.billType.text = bTemp
            cell.billDate.text = tObj.billDate
            cell.billAmount.text = String(tObj.billAmount)
        }
        if bTemp.elementsEqual("Hydro")
        {
            let tObj =  billTemp[indexPath.row] as! Hydro
            cell.billID.text = tObj.billId.intToString()
            cell.billType.text = bTemp
            cell.billDate.text = tObj.billDate
            cell.billAmount.text = String(tObj.billAmount)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let billDetails = sb.instantiateViewController(withIdentifier: "billDetails") as! BillDetailsViewController
        let tempArray = c!.returnBillArray()
        billDetails.billObj = tempArray[indexPath.row]
        navigationController?.pushViewController(billDetails, animated: true)
    }
    
    
    @IBAction func addBill(_ sender: UIBarButtonItem)
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let newBill = sb.instantiateViewController(withIdentifier: "saveBill") as! AddBillViewController
        navigationController?.pushViewController(newBill, animated: true)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
