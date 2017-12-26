//
//  TopBarV.swift
//  TimeTable
//
//  Created by Ryuhei Kaminishi on 2017/06/19.
//  Copyright © 2017 kaminisea. All rights reserved.
//

import UIKit
import Material

final class TopBarV: View {

    var colorLayer: CALayer!
    var isAnimating = false
}

extension TopBarV {

    func playExpandingAnimation(with color: UIColor) {
        let duration = 0.35
        guard !isAnimating else { return }
        isAnimating = true
        clipsToBounds = true
        // Prevent flickering when changing the color of the background immediately after termination.
        DispatchQueue.main.asyncAfter(deadline: .now() + (duration - 0.1)) {
            self.backgroundColor = color
        }
        colorLayer = CALayer()
        colorLayer.frame = CGRect(x: 0,
                                  y: 0,
                                  width: 0.05,
                                  height: 0.05)
        colorLayer.cornerRadius = 0.3
        colorLayer.backgroundColor = color.cgColor
        colorLayer.position = CGPoint(x: self.bounds.width / 2,
                                      y: self.bounds.height / 2)
        layer.insertSublayer(colorLayer,
                             at: 0)

        let materialExpandingAnimation = CABasicAnimation(keyPath: "transform")
        materialExpandingAnimation.delegate = self
        materialExpandingAnimation.keyPath = "transform.scale"
        materialExpandingAnimation.fromValue = 1
        materialExpandingAnimation.toValue = 10000
        materialExpandingAnimation.beginTime = 0
        materialExpandingAnimation.duration = duration
        let curveMove = CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1.0)
        materialExpandingAnimation.timingFunction = curveMove
        materialExpandingAnimation.repeatCount = 1
        materialExpandingAnimation.fillMode = kCAFillModeForwards
        materialExpandingAnimation.autoreverses = false
        materialExpandingAnimation.isRemovedOnCompletion = true

        colorLayer.add(materialExpandingAnimation, forKey: nil)
    }
}

extension TopBarV: CAAnimationDelegate {

    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        isAnimating = false
        clipsToBounds = false
    }
}
