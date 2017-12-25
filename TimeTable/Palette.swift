//
//  Palette.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/08.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import Foundation
import MaterialComponents.MaterialPalettes

enum Palette: Int {
    case red, pink, purple, deepPurple, indigo, blue, teal, green, lime, orange, deepOrange
    case count
}

extension Palette {

    var color: UIColor {
        switch self {
        case .red:
            return MDCPalette.red.accent400!
        case .pink:
            return MDCPalette.pink.accent400!
        case .purple:
            return MDCPalette.purple.accent400!
        case .deepPurple:
            return MDCPalette.deepPurple.accent400!
        case .indigo:
            return MDCPalette.indigo.accent400!
        case .blue:
            return MDCPalette.blue.accent400!
        case .teal:
            return MDCPalette.teal.accent400!
        case .green:
            return MDCPalette.green.accent400!
        case .lime:
            return MDCPalette.lime.accent400!
        case .orange:
            return MDCPalette.orange.accent400!
        case .deepOrange:
            return MDCPalette.deepOrange.accent400!
        case .count:
            return MDCPalette.grey.accent400!
        }
    }

    var name: String {
        switch self {
        case .red:
            return "Red"
        case .pink:
            return "Pink"
        case .purple:
            return "Purple"
        case .deepPurple:
            return "DeepPurple"
        case .indigo:
            return "Indigo"
        case .blue:
            return "Blue"
        case .teal:
            return "Teal"
        case .green:
            return "Green"
        case .lime:
            return "Lime"
        case .orange:
            return "Orange"
        case .deepOrange:
            return "DeepOrange"
        case .count:
            return "Count"
        }
    }

    static func getColor(by index: Int) -> UIColor {
        switch index {
        case Palette.red.rawValue:
            return Palette.red.color
        case Palette.pink.rawValue:
            return Palette.pink.color
        case Palette.purple.rawValue:
            return Palette.purple.color
        case Palette.deepPurple.rawValue:
            return Palette.deepPurple.color
        case Palette.indigo.rawValue:
            return Palette.indigo.color
        case Palette.blue.rawValue:
            return Palette.blue.color
        case Palette.teal.rawValue:
            return Palette.teal.color
        case Palette.green.rawValue:
            return Palette.green.color
        case Palette.lime.rawValue:
            return Palette.lime.color
        case Palette.orange.rawValue:
            return Palette.orange.color
        case Palette.deepOrange.rawValue:
            return Palette.deepOrange.color
        default:
            return MDCPalette.grey.accent400!
        }
    }

    static func getName(by index: Int) -> String {
        switch index {
        case Palette.red.rawValue:
            return Palette.red.name
        case Palette.pink.rawValue:
            return Palette.pink.name
        case Palette.purple.rawValue:
            return Palette.purple.name
        case Palette.deepPurple.rawValue:
            return Palette.deepPurple.name
        case Palette.indigo.rawValue:
            return Palette.indigo.name
        case Palette.blue.rawValue:
            return Palette.blue.name
        case Palette.teal.rawValue:
            return Palette.teal.name
        case Palette.green.rawValue:
            return Palette.green.name
        case Palette.lime.rawValue:
            return Palette.lime.name
        case Palette.orange.rawValue:
            return Palette.orange.name
        case Palette.deepOrange.rawValue:
            return Palette.deepOrange.name
        default:
            return "default"
        }
    }
}
