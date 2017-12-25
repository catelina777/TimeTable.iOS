//
//  EditTimetableVC.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/05/18.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material
import MaterialComponents.MaterialPalettes

class EditTimetableVC: BaseVC {

    @IBOutlet weak var topBarView: TopBarView!
    let topBarColorLayer = Layer()

    @IBOutlet weak var subjectNameTextField: TextField!
    @IBOutlet weak var classroomTextField: TextField!
    @IBOutlet weak var teacherNameTextField: TextField!
    @IBOutlet weak var creditNumberTextField: TextField!
    @IBOutlet weak var colorLabel: UILabel!

    @IBOutlet weak var closeButton: IconButton!
    @IBOutlet weak var saveButton: IconButton!
    @IBOutlet weak var colorPickerPulseButton: Button!

    @IBOutlet weak var subjectNameIconImageView: UIImageView!
    @IBOutlet weak var classRoomIconImageView: UIImageView!
    @IBOutlet weak var teacherNameIconImageView: UIImageView!
    @IBOutlet weak var creditNumberIconImageView: UIImageView!
    @IBOutlet weak var colorIconImageView: UIImageView!
    @IBOutlet weak var arrowRightImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareTopBar()
        prepareSubjectNameField()
        prepareClassroomField()
        prepareTeacherNameField()
        prepareCreditNumberField()
        prepareColorPickerField()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        UIApplication.shared.statusBarStyle = .lightContent
    }
}

// MARK: Function when pressing something
extension EditTimetableVC {

    @IBAction func didPressedCloseButton(_ sender: Any) {
        self.view.endEditing(true)
        self.dismiss(
            animated: true,
            completion: nil
        )
    }

    @IBAction func didPressedSaveButton(_ sender: Any) {

    }

    @IBAction func didPressedColorPickerButton(_ sender: Any) {

        let destinationVC = R.storyboard.colorPickerView.instantiateInitialViewController()
        navigationController?.pushViewController(
            destinationVC!,
            animated: true
        )
    }

    @IBAction func tapScreen(_ sender: UIGestureRecognizer) {
        self.view.endEditing(true)
    }
}
