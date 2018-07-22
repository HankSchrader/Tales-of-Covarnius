//
//  Difficulty+CoreDataProperties.swift
//  Pilot
//
//  Created by Erik Mikac on 7/21/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//
//

import Foundation
import CoreData


extension Difficulty {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Difficulty> {
        return NSFetchRequest<Difficulty>(entityName: "Difficulty")
    }

    @NSManaged public var isEasyMode: Bool
     @NSManaged public var label: String

}
