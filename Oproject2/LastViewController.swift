//
//  LastViewController.swift
//  Oproject2
//
//  Created by 오지연 on 2017. 12. 20..
//  Copyright © 2017년 jiyeon. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {
    

    @IBOutlet var name: UILabel!
    @IBOutlet var number: UILabel!
    @IBOutlet var address: UILabel!
    @IBOutlet var payCheck: UILabel!
    
    var lastName: String!
    var lastNumber: String!
    var lastAddress: String!
    var lastPaySeg: String!
    
    
    //--- 받아온 정보 출력
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = lastName
        number.text = lastNumber
        address.text = lastAddress
        payCheck.text = lastPaySeg
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
