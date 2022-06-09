//
//  Places+CoreDataProperties.swift
//  Projekt-IOS
//
//  Created by student on 09/06/2022.
//  Copyright © 2022 PL. All rights reserved.
//
//

import Foundation
import CoreData


extension Places {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Places> {
        return NSFetchRequest<Places>(entityName: "Places")
    }

    @NSManaged public var coordX: Double
    @NSManaged public var coordY: Double
    @NSManaged public var subtitle: String?
    @NSManaged public var title: String?

}

extension Places : Identifiable {
    
}
