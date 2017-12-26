//
//  BaseModel.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/07/11.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import Foundation
import RealmSwift

class BaseModel: Object {
    
    @objc dynamic var identifier: String?

    override static func primaryKey() -> String? {
        return "identifier"
    }
}
