//
//  TabTwoVC.swift
//  TabbarDelegation
//
//  Created by Attila Marosi on 2019. 01. 10..
//  Copyright © 2019. Attila Marosi. All rights reserved.
//

import  UIKit

class TabTwoVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        navigationItem.title = "Tab Two"
        
        // Custom button top left
        let leftButton = UIBarButtonItem(title: "Custom 2", style: .plain, target: self, action: #selector(leftBtnTapped(_:)))
        navigationItem.leftBarButtonItem = leftButton
        // Custom button top right
        let rightButton = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(rightBtnTapped(_:)))
        navigationItem.rightBarButtonItem = rightButton
        
    }
    
    @objc func leftBtnTapped(_ sender: UIBarButtonItem) {
        navigationController?.pushViewController(Custom2VC(), animated: true)
    }
    
    
    @objc func rightBtnTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}

