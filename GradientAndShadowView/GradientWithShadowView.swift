//
//  GradientWithShadowView.swift
//  GradientAndShadowView
//
//  Created by Ian Baikuchukov on 2/2/24.
//

import UIKit

final class GradientWithShadowView: UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupGradientLayer()
        
        layer.shadowColor = UIColor.systemGray.cgColor
        layer.shadowRadius = 5
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: 0, height: 8)
    }
    
    private func setupGradientLayer() {
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = 16
        gradientLayer.colors = [UIColor.systemBlue, UIColor.systemRed].map { $0.cgColor }
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        gradientLayer.drawsAsynchronously = false
        
        layer.addSublayer(gradientLayer)
    }
    
}
