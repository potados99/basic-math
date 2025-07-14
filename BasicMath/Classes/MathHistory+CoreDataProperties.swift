//
//  MathHistory+CoreDataProperties.swift
//  
//
//  Created by Potados on 7/14/25.
//
//

import Foundation
import CoreData


extension MathHistory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MathHistory> {
        return NSFetchRequest<MathHistory>(entityName: "MathHistory")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var something: String?

}
