//
//  UILabelExtension.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/26.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit

extension UILabel {

    func set(text: String, lineSpacing: CGFloat, minSpacing: CGFloat) {
        let attrString = NSMutableAttributedString(string: text)
        let style = NSMutableParagraphStyle()
        let range = NSRange.init(location: 0,
                                 length: text.count)
        style.lineSpacing = lineSpacing
        style.minimumLineHeight = minSpacing
        style.alignment = .center
        style.lineBreakMode = .byWordWrapping
        attrString.addAttribute(NSAttributedStringKey.paragraphStyle,
                                value: style,
                                range: range)
        self.attributedText = attrString
    }
}
