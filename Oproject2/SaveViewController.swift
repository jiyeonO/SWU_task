//
//  SaveViewController.swift
//  Oproject2
//
//  Created by 오지연 on 2017. 11. 26..
//  Copyright © 2017년 jiyeon. All rights reserved.
//

import UIKit
import CoreData

class SaveViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textSaveName: UITextField!
    @IBOutlet var textSaveAddress: UITextField!
    @IBOutlet var textSaveNumber: UITextField!
    
    func getContext () -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func savePressed(_ sender: UIBarButtonItem) {
        let context = getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Address", in: context)
        // friend record를 새로 생성함
        let object = NSManagedObject(entity: entity!, insertInto: context)
        object.setValue(textSaveName.text, forKey: "saveName")
        object.setValue(textSaveAddress.text, forKey: "saveAddress")
        object.setValue(textSaveNumber.text, forKey: "saveNumber")
        
        do {
            try context.save()
            print("saved!")
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
