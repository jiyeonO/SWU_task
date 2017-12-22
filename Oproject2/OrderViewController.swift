//
//  OrderViewController.swift
//  Oproject2
//
//  Created by 오지연 on 2017. 11. 27..
//  Copyright © 2017년 jiyeon. All rights reserved.
//

import UIKit
import CoreData

class OrderViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textName: UITextField!
    @IBOutlet var textNumber: UITextField!
    @IBOutlet var textAddress: UITextField!
    @IBOutlet var payment: UISegmentedControl!
    @IBOutlet var button: UIButton!
    
    var selectedIndex: Int? = nil
    
    var detailAddress: NSManagedObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 10

        if let address = detailAddress {
            textAddress.text = address.value(forKey: "saveAddress") as? String
            textName.text = address.value(forKey: "saveName") as? String
            textNumber.text = address.value(forKey: "saveNumber") as? String
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLast"{
            let destVC = segue.destination as! LastViewController
            destVC.title = "결제창"
            destVC.lastName = textName.text
            destVC.lastNumber = textNumber.text
            destVC.lastAddress = textAddress.text
            destVC.lastPaySeg = payment.titleForSegment(at: payment.selectedSegmentIndex)!
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
