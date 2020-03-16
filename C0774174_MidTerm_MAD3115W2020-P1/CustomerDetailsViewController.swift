//
//  CustomerDetailsViewController.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
   
    
    var custdetails:Customer?=nil
    @IBOutlet weak var lblDetails: UILabel!
    @IBOutlet weak var lbldetails2: UILabel!
    
    @IBOutlet weak var totalBill_txt: UILabel!
    //@IBOutlet weak var billList: UITableViewCell!
    @IBOutlet weak var billList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDetails.text = custdetails?.fullName
        lbldetails2.text = custdetails?.customerEmail
        totalBill_txt.text = custdetails?.total
        self.billList.delegate=self
        self.billList.dataSource=self
       let rightButton = UIBarButtonItem(title: "Add Bill", style: UIBarButtonItem.Style.plain, target: self, action: #selector( self.goToAddBill))
       self.navigationItem.rightBarButtonItem = rightButton
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ((custdetails?.billDictionary.count)!)
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell")!
        let currentbill = custdetails?.billDictionary[indexPath.row + 1]
        var details = ""
//        if currentbill?.billType == billTypes.Mobile{
//            cell.textLabel?.numberOfLines = 12
//
            
            if currentbill?.billType == billTypes.Mobile{
            cell.textLabel?.numberOfLines = 12
            let mobileBill = currentbill as! Mobile
            details = "\nBill Type : Mobile \nManufacturer Name : \(mobileBill.mobileManufacturer) \nPlan Name : \(mobileBill.planName) \nMobile Number : \(mobileBill.mobileNumber) \nInternet used : \(mobileBill.internetUsed.data()) \nMinutes Used : \(mobileBill.minuteUsed.minutes()) "
        }
            else if currentbill?.billType == billTypes.Hydro{
                cell.textLabel?.numberOfLines = 12
                let hydroBill = currentbill as! Hydro
                details = "\nBill Type : Hydro \nAgency Name : \(hydroBill.agencyName) \nUnit Consumed : \(hydroBill.unitconsumed.unit())"
            }
            else if currentbill?.billType == billTypes.Internet{
                    cell.textLabel?.numberOfLines = 12
                    let internetBill = currentbill as! Internet
                    details = "\nBill Type : Internet \nProvider Name : \(internetBill.providerName) \nInternet Used : \(internetBill.internetUsed.data())"
                }
            
        
        
        //print("HEllpo","Bill ID : \(String(describing: currentbill!.Id)) \nBill Date : \(String(describing: currentbill!.billDate.getForamttedDate())) \nBill Total : \(String(describing: currentbill!.totalBillAmount.currency())) \(details)")
        cell.textLabel?.text = "Bill ID : \(String(describing: currentbill!.Id)) \nBill Date : \(String(describing: currentbill!.billDate.getForamttedDate())) \nBill Total : \(String(describing: currentbill!.totalBillAmount.currency())) \(details)"
        return cell
        
       }
    
    @objc func goToAddBill(){
    self.performSegue(withIdentifier: "goToAddNewBill", sender: nil)
    }
}
