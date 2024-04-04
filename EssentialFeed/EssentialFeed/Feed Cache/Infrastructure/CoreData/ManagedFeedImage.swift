//
//  ManagedFeedImage.swift
//  EssentialFeed
//
//  Created by Alberto Garcia Paul on 04/10/23.
//

import CoreData

@objc(ManagedFeedImage)
class ManagedFeedImage: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var imageDescription: String?
    @NSManaged var location: String?
    @NSManaged var url: URL
    @NSManaged var data: Data?
    @NSManaged var cache: ManagedCache
}

extension ManagedFeedImage {
    static func data(with url: URL, in context: NSManagedObjectContext) throws -> Data? {
        try first(with: url, in: context)?.data
    }
    
    static func first(with url: URL, in context: NSManagedObjectContext) throws -> ManagedFeedImage? {
        let request = NSFetchRequest<ManagedFeedImage>(entityName: entity().name!)
        request.predicate = NSPredicate(format: "%K = %@", argumentArray: [#keyPath(ManagedFeedImage.url), url])
        request.returnsObjectsAsFaults = false
        request.fetchLimit = 1
        return try context.fetch(request).first
    }
    
    static func images(from feed: [LocalFeedImage], in context: NSManagedObjectContext) -> NSOrderedSet {
        NSOrderedSet(array: feed.map { local in
            let managedFeedImage = ManagedFeedImage(context: context)
            managedFeedImage.id = local.id
            managedFeedImage.imageDescription = local.description
            managedFeedImage.location = local.location
            managedFeedImage.url = local.url
            return managedFeedImage
        })
    }
    
    var local: LocalFeedImage {
        LocalFeedImage(id: id, description: imageDescription, location: location, url: url)
    }
}
