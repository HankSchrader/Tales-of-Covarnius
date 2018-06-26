//
//  Chapter+CoreDataProperties.swift
//  Pilot
//
//  Created by Erik Mikac on 3/2/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//
//

import Foundation
import CoreData


extension Chapter {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Chapter> {
        return NSFetchRequest<Chapter>(entityName: "Chapter")
    }

    @NSManaged public var name: String?
    @NSManaged public var order: Int16
}
