//
//  EditTimetableVCE.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/05/18.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material
import MaterialComponents.MaterialPalettes

extension EditTimetableVC {

    func prepareTopBar() {
        topBarView.depthPreset = .depth1
        topBarView.backgroundColor = themeColor
        topBarView.clipsToBounds = true
        closeButton.image = R.image.ic_close()?.withRenderingMode(.alwaysTemplate)
        closeButton.tintColor = .white
    }

    func prepareSubjectNameField() {
        subjectNameTextField.placeholder = "科目名"
        subjectNameTextField.set(defaultColor: secondFontColor,
                                 activeColor: themeColor)
        subjectNameIconImageV.image = R.image.ic_create()?.withRenderingMode(.alwaysTemplate)
        subjectNameIconImageV.tintColor = buttonColor
    }

    func prepareClassroomField() {
        classroomTextField.placeholder = "教室"
        classroomTextField.set(defaultColor: secondFontColor,
                               activeColor: themeColor)
        classRoomIconImageV.image = R.image.ic_room()?.withRenderingMode(.alwaysTemplate)
        classRoomIconImageV.tintColor = buttonColor
    }

    func prepareTeacherNameField() {
        teacherNameTextField.placeholder = "教員名"
        teacherNameTextField.set(defaultColor: secondFontColor,
                                 activeColor: themeColor)
        teacherNameIconImageV.image = R.image.ic_person()?.withRenderingMode(.alwaysTemplate)
        teacherNameIconImageV.tintColor = buttonColor
    }

    func prepareCreditNumberField() {
        creditNumberTextField.placeholder = "単位数"
        creditNumberTextField.set(defaultColor: secondFontColor,
                                  activeColor: themeColor)
        creditNumberTextField.keyboardType = .numberPad
        creditNumberIconImageV.image = R.image.ic_school()?.withRenderingMode(.alwaysTemplate)
        creditNumberIconImageV.tintColor = buttonColor
    }

    func prepareColorPickerField() {
        colorPickerPulseButton.pulseAnimation = .pointWithBacking
        colorIconImageV.image = R.image.ic_fiber_manual_record()?.withRenderingMode(.alwaysTemplate)
        colorIconImageV.tintColor = themeColor
        arrowRightImageV.image = R.image.ic_keyboard_arrow_right()?.withRenderingMode(.alwaysTemplate)
        arrowRightImageV.tintColor = buttonColor
    }
}
