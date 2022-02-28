//
import Foundation
import CoreData


extension Liked {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Liked> {
        return NSFetchRequest<Liked>(entityName: "Liked")
    }

    @NSManaged public var id: UUID
    @NSManaged public var isFavorite: Bool

}

extension Liked : Identifiable {

}
