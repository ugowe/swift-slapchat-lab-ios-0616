//
//  AddMessageViewController.swift
//  SlapChat
//
//  Created by Ugowe on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class AddMessageViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        let store = DataStore()
        let newMessage = NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: store.managedObjectContext) as! Message
        newMessage.content = textField.text
        newMessage.createdAt = NSDate()
        store.saveContext()
        dismissViewControllerAnimated(true, completion: nil)

    }

    @IBAction func cancelButtonTapped(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
