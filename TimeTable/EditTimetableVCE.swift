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
        subjectNameIconImageView.image = R.image.ic_create()?.withRenderingMode(.alwaysTemplate)
        subjectNameIconImageView.tintColor = buttonColor
    }

    func prepareClassroomField() {
        classroomTextField.placeholder = "教室"
        classroomTextField.set(defaultColor: secondFontColor,
                               activeColor: themeColor)
        classRoomIconImageView.image = R.image.ic_room()?.withRenderingMode(.alwaysTemplate)
        classRoomIconImageView.tintColor = buttonColor
    }

    func prepareTeacherNameField() {
        teacherNameTextField.placeholder = "教員名"
        teacherNameTextField.set(defaultColor: secondFontColor,
                                 activeColor: themeColor)
        teacherNameIconImageView.image = R.image.ic_person()?.withRenderingMode(.alwaysTemplate)
        teacherNameIconImageView.tintColor = buttonColor
    }

    func prepareCreditNumberField() {
        creditNumberTextField.placeholder = "単位数"
        creditNumberTextField.set(defaultColor: secondFontColor,
                                  activeColor: themeColor)
        creditNumberTextField.keyboardType = .numberPad
        creditNumberIconImageView.image = R.image.ic_school()?.withRenderingMode(.alwaysTemplate)
        creditNumberIconImageView.tintColor = buttonColor
    }

    func prepareColorPickerField() {
        colorPickerPulseButton.pulseAnimation = .pointWithBacking
        colorIconImageView.image = R.image.ic_fiber_manual_record()?.withRenderingMode(.alwaysTemplate)
        colorIconImageView.tintColor = themeColor
        arrowRightImageView.image = R.image.ic_keyboard_arrow_right()?.withRenderingMode(.alwaysTemplate)
        arrowRightImageView.tintColor = buttonColor
    }
}
