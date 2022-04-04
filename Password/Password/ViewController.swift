//
//  ViewController.swift
//  Password
//
//  Created by elliott kung on 2022-04-02.
//

import UIKit

import UIKit

class ViewController: UIViewController {
    
    let stackView = UIStackView()
    let newPasswordTextField = PasswordTextField(placeHolderText: "New Password")
    let passwordCriteriaView = PasswordCriteriaView(text: "uppercase letter (A-Z)")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension ViewController {
    func style() {
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordCriteriaView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        
    }
    
    func layout() {
        //stackView.addArrangedSubview(newPasswordTextField)
        stackView.addArrangedSubview(passwordCriteriaView)
        view.addSubview(stackView)
        
//        NSLayoutConstraint.activate([
//            newPasswordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            newPasswordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//        ])
        
        // stackview
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        
    }
}

