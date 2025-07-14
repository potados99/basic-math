//
//  BasicMath.swift
//  BasicMath
//
//  Created by Potados on 7/14/25.
//

import Foundation
import CoreData

#if canImport(ZipArchive)
import ZipArchive
#elseif canImport(SSZipArchive)
import SSZipArchive
#endif

public class SomeMathMagic {
    public init() {
        NSLog("SomeMathMagic constructor called.")
    }
    
    public static func saySomething() -> String {
        if let url = Bundle(for: SomeMathMagic.self).url(forResource: "hello", withExtension: "txt") {
            let text = try? String(contentsOf: url, encoding: String.Encoding.utf8)
            
            return text ?? ""
        } else {
            return ""
        }
    }
    
    public func add(_ a: Int, _ b: Int) -> Int {
        let result = a + b
        
        let context = CoreDataStack.shared.context
        _ = MathHistory(context: context, something: "\(a) + \(b) = \(result)")
        CoreDataStack.shared.saveContext()
        NSLog("History added")
        
        return result
    }
    
    public func histories() -> [MathHistory] {
        let context = CoreDataStack.shared.context
        let request: NSFetchRequest<MathHistory> = MathHistory.fetchRequest()
        NSLog("History fetched")
        return (try? context.fetch(request)) ?? []
    }
}
