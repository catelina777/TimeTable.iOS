//
//  SeasonModel.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/07/11.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import Foundation
import RealmSwift

class SeasonModel: BaseModel {

    @objc dynamic var seasonName: String?
    let timetables = List<ContentModel>()
    let timeStamp = Date()
}
