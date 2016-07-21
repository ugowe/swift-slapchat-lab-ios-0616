//
//  Message+CoreDataProperties.swift
//  SlapChat
//
//  Created by Ugowe on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Message {

    @NSManaged var content: String?
    @NSManaged var createdAt: NSDate?

}
