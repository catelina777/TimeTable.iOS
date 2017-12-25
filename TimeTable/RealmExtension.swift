//
//  RealmExtension.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/04/17.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import Foundation
import RealmSwift

extension Realm {

    static func execute(_ completion: (Realm) -> Void) {
        autoreleasepool {
            let realm = try! Realm()
            try! realm.write {
                completion(realm)
            }
        }
    }
}
