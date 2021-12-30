//
//  Task.swift
//  TaskApp
//
//  Created by Haik Divanyan on 12/29/21.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
