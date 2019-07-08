//
//  LoadingView.swift
//  Button
//
//  Created by Luis Ezcurdia on 5/18/18.
//  Copyright © 2018 Luis Ezcurdia. All rights reserved.
//

import UIKit

class LoadingView: UIView {
    lazy var circle: CAShapeLayer = {
        let layer = circleShape(at: self.center, fillColor: UIColor(named: "violet")!, strokeColor: .clear)
        return layer
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayers()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayers()
    }

    func setupLayers() {
        backgroundColor = UIColor(named: "grape")
        self.layer.addSublayer(circle)
    }

    private func circleShape(at center: CGPoint,
                             fillColor: UIColor,
                             strokeColor: UIColor,
                             radius: CGFloat = 120,
                             strokeWidth: CGFloat = 20) -> CAShapeLayer {
        let shape = CAShapeLayer()
        let circle = UIBezierPath(arcCenter: .zero,
                                  radius: radius,
                                  startAngle: 0,
                                  endAngle: 2*CGFloat.pi,
                                  clockwise: true)
        shape.path = circle.cgPath
        shape.fillColor = fillColor.cgColor
        shape.strokeColor = strokeColor.cgColor
        shape.lineWidth = strokeWidth
        shape.lineCap = kCALineCapRound
        shape.position = center
        return shape
    }
}
