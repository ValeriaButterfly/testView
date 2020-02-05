//
//  CustomTabBar.swift
//  testView
//
//  Created by Valeria Muldt on 04.02.2020.
//  Copyright © 2020 Valeria Muldt. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBar {
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var size = super.sizeThatFits(size)
        size.height = 88
        return size
    }

}
