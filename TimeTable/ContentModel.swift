//
//  ContentModel.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/07/11.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import Foundation
import RealmSwift

class ContentModel: BaseModel {

    @objc dynamic var subjectName: String?
    @objc dynamic var classroomNumber: String?
    @objc dynamic var teacherName: String?
    @objc dynamic var credit = 0
}
