//
//  FirstViewController.swift
//  Oproject2
//
//  Created by 오지연 on 2017. 11. 26..
//  Copyright © 2017년 jiyeon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController{

    var onOffStatus: Bool = false
    var totalCount: Int = 0
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    
    @IBOutlet var onOffSwitch: UISwitch!
    @IBOutlet var display: UILabel!
    @IBOutlet var totalDisplay: UILabel!
    @IBOutlet var buyButton: UIButton! // 버튼 둥글게
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onOffSwitch.isOn = false
        buyButton.layer.cornerRadius = 10
    }
    
    @IBAction func onOff(_ sender: UISwitch) {
        if onOffSwitch.isOn {
            onOffStatus = true
        }
        else {
            onOffStatus = false
            totalCount = 0
            display.text = "상품을 선택하세요."
            totalDisplay.text = "    Total    "
        }
    }
   
    @IBAction func chooseOne(_ sender: UIButton) {
        var count: Int = 0
        var chooseButton: String = ""
        if onOffStatus {
        if sender == button1 {
            chooseButton = "가디건"
            count = 49800
        }
        else if sender == button2 {
            chooseButton = "니트세트"
            count = 68000
        }
        else if sender == button3 {
            chooseButton = "롱스커트"
             count = 77000
        }
        else if sender == button4 {
            chooseButton = "레이스"
             count = 51000
        }
        else if sender == button5 {
            chooseButton = "체크세트"
             count = 54000
        }
        else {
            chooseButton = "원피스"
             count = 63000
        }
        display.text = chooseButton + "을 선택하셨습니다."
        totalCount += count
            totalDisplay.text = "    Total    " +  "\(totalCount)" + "    won"
        }
    }
    
    @IBAction func nextView(_ sender: UIButton) {
        if totalCount != 0 {
            self.performSegue(withIdentifier: "segueNext", sender: self)}
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? ChooseTableViewController {
            destVC.title = "\(totalCount)" + "원 결제"
            destVC.deptVC = self
        }
    }
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
