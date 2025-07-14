import CoreData

public class CoreDataStack {
    public static let shared = CoreDataStack()

    public lazy var persistentContainer: NSPersistentContainer = {
        // 프레임워크 번들
        let bundle = Bundle(for: CoreDataStack.self)

        // .momd 경로
        guard let modelURL = bundle.url(forResource: "BasicMathModel", withExtension: "momd") else {
            fatalError("❌ 모델 URL을 찾을 수 없습니다.")
        }

        // 모델 로딩
        guard let model = NSManagedObjectModel(contentsOf: modelURL) else {
            fatalError("❌ 모델을 로딩할 수 없습니다.")
        }

        // 커스텀 초기화
        let container = NSPersistentContainer(name: "BasicMathModel", managedObjectModel: model)
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("❌ Failed to load store: \(error)")
            }
            
            container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
            container.viewContext.automaticallyMergesChangesFromParent = true
        }

        return container
    }()

    public lazy var context: NSManagedObjectContext = {
        return persistentContainer.newBackgroundContext()
    }()
   
    public func saveContext() {
        if context.hasChanges {
            try? context.save()
        }
    }
}
