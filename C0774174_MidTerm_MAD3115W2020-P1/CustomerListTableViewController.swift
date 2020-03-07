//
//  CustomerListTableViewController.swift
//  C0774174_MidTerm_MAD3115W2020-P1
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController {
    
    
    @IBOutlet weak var tblCustomer: UITableView!
    
    var firstName: String!
    var lastName: String!
    var email: String!
    var customerCell : [Customer] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        addLogoutButton()
        addNewCustomerButton()
        customerCell = DataStorage.getInstance().getAllCustomers()
        

        // Do any additional setup after loading the view.
    }
    func loadCustomers()
    {
        customerCell.append(Customer(customerId: 1, firstName: "roop", lastName: "virk", emailId: "roop@gmail"))
    }
    
    
    private func addNewCustomerButton()
    {
      let btnAdd = UIBarButtonItem(image: UIImage(systemName: "plus") , style: .plain, target: self, action: #selector(self.add))
      self.navigationItem.rightBarButtonItem = btnAdd
    }
    @objc func add()
    {
      let sb = UIStoryboard(name: "Main", bundle: nil)
       let thirdVC = sb.instantiateViewController(identifier: "thirdVC") as! AddNewCustomerViewController
       
         self.navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    private func addLogoutButton()
    {
      
      let btnLogout = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(self.logout))
       
      self.navigationItem.leftBarButtonItem = btnLogout
    }
    
    @objc func logout()
    {
      self.navigationController?.popViewController(animated: true)
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
extension CustomerListTableViewController: UITableViewDataSource, UITableViewDelegate
{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  {
    return customerCell.count
  }
   
  func tableView(in tableview: UITableView) -> Int
  {
    return 1
  }
   
  func tableView(_ tblCustomer: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    let cell = tblCustomer.dequeueReusableCell(withIdentifier: "customerCell")
      let customer = customerCell[indexPath.row]
    
    cell?.textLabel?.text = customer.firstName
    cell?.detailTextLabel?.text = customer.lastName
    cell?.textLabel?.text = customer.emailId
    
       return cell!
  }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let c = customerCell[indexPath.row]
        print(c)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
   
}
