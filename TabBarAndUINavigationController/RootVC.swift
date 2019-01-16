//
//  ViewController.swift
//  TabbarDelegation
//
//  Created by Attila Marosi on 2019. 01. 10..
//  Copyright © 2019. Attila Marosi. All rights reserved.
//

import UIKit

class RootVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarLayout()
    }
    
    private func setupTabBarLayout() {
        let tabOneVC = UINavigationController(rootViewController: TabOneVC())
        tabOneVC.tabBarItem = UITabBarItem(title: "One", image: nil, tag: 1)
        let tabTwoVC = UINavigationController(rootViewController: TabTwoVC())
        tabTwoVC.tabBarItem = UITabBarItem(title: "Two", image: nil, tag: 2)
        viewControllers = [tabOneVC, tabTwoVC]
    }


}

