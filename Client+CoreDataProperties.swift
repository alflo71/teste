//
//  Client+CoreDataProperties.swift
//  TesteCadastro
//
//  Created by Aloisio on 06/03/23.
//
//

import Foundation
import CoreData


extension Client {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Client> {
        return NSFetchRequest<Client>(entityName: "Client")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var phone: String?
    @NSManaged public var address: String?
    @NSManaged public var originConsultant: Consultant?

}

extension Client : Identifiable {

}
