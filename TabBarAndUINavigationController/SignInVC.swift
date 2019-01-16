//
//  SignInVC.swift
//  TabbarDelegation
//
//  Created by Attila Marosi on 2019. 01. 10..
//  Copyright © 2019. Attila Marosi. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {
    
    // Button
    lazy var loginButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(loginButtonTapped(_:)), for: .touchUpInside)
        btn.setTitle("Login", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .orange
        btn.layer.cornerRadius = 20
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    // Setup button layout
    private func setupLayout() {
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            loginButton.widthAnchor.constraint(equalToConstant: 120)
            ])
    }
    
    @objc private func loginButtonTapped(_ sender: UIButton) {
        present(RootVC(), animated: true, completion: nil)
    }
    
}
