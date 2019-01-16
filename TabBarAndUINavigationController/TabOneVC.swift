//
//  TabOneVC.swift
//  TabbarDelegation
//
//  Created by Attila Marosi on 2019. 01. 10..
//  Copyright © 2019. Attila Marosi. All rights reserved.
//

import  UIKit

class TabOneVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        navigationItem.title = "Tab One"
        
        // Custom button top left
        let leftButton = UIBarButtonItem(title: "Custom 1", style: .plain, target: self, action: #selector(leftBtnTapped(_:)))
        navigationItem.leftBarButtonItem = leftButton
        // Custom button top right
        let rightButton = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(rightBtnTapped(_:)))
        navigationItem.rightBarButtonItem = rightButton
        
    }
    
    @objc func leftBtnTapped(_ sender: UIBarButtonItem) {
        navigationController?.pushViewController(Custom1VC(), animated: true)
    }
    
    
    @objc func rightBtnTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}
