//
//  Consultant+CoreDataProperties.swift
//  TesteCadastro
//
//  Created by Aloisio on 06/03/23.
//
//

import Foundation
import CoreData


extension Consultant {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Consultant> {
        return NSFetchRequest<Consultant>(entityName: "Consultant")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var originClient: NSSet?

}

// MARK: Generated accessors for originClient
extension Consultant {

    @objc(addOriginClientObject:)
    @NSManaged public func addToOriginClient(_ value: Client)

    @objc(removeOriginClientObject:)
    @NSManaged public func removeFromOriginClient(_ value: Client)

    @objc(addOriginClient:)
    @NSManaged public func addToOriginClient(_ values: NSSet)

    @objc(removeOriginClient:)
    @NSManaged public func removeFromOriginClient(_ values: NSSet)

}

extension Consultant : Identifiable {

}
