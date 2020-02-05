//
//  HomeViewController.swift
//  testView
//
//  Created by Valeria Muldt on 04.02.2020.
//  Copyright © 2020 Valeria Muldt. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupShadowView(view: firstView)
        setupShadowView(view: secondView)
    }
    
    func setupShadowView(view: UIView) {
        view.layer.masksToBounds = false
        view.layer.shadowRadius = 2
        view.layer.shadowOpacity = 0.3
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 10)
    }
}
