//
//  SettingsViewController.swift
//  testView
//
//  Created by Valeria Muldt on 04.02.2020.
//  Copyright © 2020 Valeria Muldt. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var moreSettingsView: UIView!
    
    @IBOutlet weak var manMale: UIButton! {
        didSet {
            manMale.isSelected = true
        }
    }
    @IBOutlet weak var womanMale: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func setupView() {
        moreSettingsView.layer.shadowColor = UIColor.black.cgColor
        moreSettingsView.layer.shadowOpacity = 0.3
        moreSettingsView.layer.shadowOffset = .zero
        moreSettingsView.layer.shadowRadius = 15
    }
    
    
    @IBAction func chooseMan(_ sender: Any) {
        womanMale.isSelected = false
        manMale.isSelected = true
    }
    
    @IBAction func chooseWoman(_ sender: Any) {
        manMale.isSelected = false
        womanMale.isSelected = true
    }
}
