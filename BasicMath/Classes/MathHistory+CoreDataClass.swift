//
//  MathHistory+CoreDataClass.swift
//
//
//  Created by Potados on 7/14/25.
//
//

import Foundation
import CoreData

@objc(MathHistory)
public class MathHistory: NSManagedObject {
    convenience init(context: NSManagedObjectContext, something: String) {
        self.init(context: context)
        self.id = UUID()
        self.something = something
        self.createdAt = Date()
    }
}
