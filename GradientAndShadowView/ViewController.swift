//
//  ViewController.swift
//  GradientAndShadowView
//
//  Created by Ian Baikuchukov on 2/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var gradientWithShadowView: GradientWithShadowView = {
        GradientWithShadowView()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(gradientWithShadowView)
        gradientWithShadowView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gradientWithShadowView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            gradientWithShadowView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            gradientWithShadowView.widthAnchor.constraint(equalToConstant: 100),
            gradientWithShadowView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
}

