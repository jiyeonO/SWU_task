//
//  detailViewController.swift
//  Oproject2
//
//  Created by 오지연 on 2017. 12. 21..
//  Copyright © 2017년 jiyeon. All rights reserved.
//

import UIKit
import CoreData

class detailViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    
    var detailInfo: NSManagedObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //-- 상세정보 보여주기
        if let address = detailInfo {
            addressLabel.text = address.value(forKey: "saveAddress") as? String
            nameLabel.text = address.value(forKey: "saveName") as? String
            numberLabel.text = address.value(forKey: "saveNumber") as? String
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
