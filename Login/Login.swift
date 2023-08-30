//
//  Login.swift
//  Login
//
//  Created by DA MAC M1 157 on 2023/08/29.
//

import UIKit

class Login: UIViewController {
    

    
    private let loginLayer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: -1, height: -1)
        view.layer.shadowOpacity = 0.7
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = 15
        return view
    }()
    
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "person")
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.tintColor = .blue
        return imageView
        
    }()
    
    private let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont(name: "Avenir", size: 16)
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        
        textField.attributedPlaceholder = NSAttributedString(
            string: "Enter username",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        )
        
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont(name: "Avenir", size: 16)
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        
        textField.attributedPlaceholder = NSAttributedString(
            string: "Enter password",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray ])
        
        
        return textField
    }()
    
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Log in", for: .normal)
        button.backgroundColor = .blue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
     //MARK: - setupViews
    func setupUI() {
        view.addSubview(loginLayer)
        loginLayer.addSubview(imageView)
        
        loginLayer.addSubview(usernameTextField)
        usernameTextField.backgroundColor = UIColorFromRGB(rgbValue: 0xEAFDFC)
        
        loginLayer.addSubview(passwordTextField)
        passwordTextField.backgroundColor = UIColorFromRGB(rgbValue: 0xEAFDFC)
        
        loginLayer.addSubview(loginButton)
        
        loginLayer.backgroundColor = UIColorFromRGB(rgbValue: 0xC8FFE0)
        view.backgroundColor = UIColorFromRGB(rgbValue: 0xF6F4EB)
        composeConstraints()
    }
    
        func composeConstraints() {
            let loginLayerConstraints = [
                loginLayer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide
                    .topAnchor, constant: 40),
                loginLayer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                loginLayer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                loginLayer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
            ]
            
            let composeImageViewConstraints = [
                imageView.topAnchor.constraint(equalTo: loginLayer.topAnchor, constant: 20),
                imageView.heightAnchor.constraint(equalToConstant: 120),
                imageView.centerXAnchor.constraint(equalTo: loginLayer.centerXAnchor),
            ]
            
            
            let usernameTextFieldConstraints = [
                usernameTextField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30),
                usernameTextField.leadingAnchor.constraint(equalTo: loginLayer.leadingAnchor, constant: 15),
                usernameTextField.trailingAnchor.constraint(equalTo: loginLayer.trailingAnchor, constant: -15),
                usernameTextField.heightAnchor.constraint(equalToConstant: 40),
               
            ]
            
            
            let passwordTextFieldConstraints = [
                passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
                passwordTextField.leadingAnchor.constraint(equalTo: loginLayer.leadingAnchor, constant: 15),
                passwordTextField.trailingAnchor.constraint(equalTo: loginLayer.trailingAnchor, constant: -15),
                passwordTextField.heightAnchor.constraint(equalToConstant: 40),
                
            ]
            
            
            let loginButtonConstraints = [
                loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 35),
                loginButton.centerXAnchor.constraint(equalTo: loginLayer.centerXAnchor),
                loginButton.widthAnchor.constraint(greaterThanOrEqualToConstant: 220),
                loginButton.heightAnchor.constraint(equalToConstant: 55),
                loginButton.bottomAnchor.constraint(lessThanOrEqualTo: loginLayer.bottomAnchor, constant: -50)
            ]
        
            NSLayoutConstraint.activate(loginLayerConstraints)
            NSLayoutConstraint.activate(composeImageViewConstraints)
            NSLayoutConstraint.activate(usernameTextFieldConstraints)
            NSLayoutConstraint.activate(passwordTextFieldConstraints)
            NSLayoutConstraint.activate(loginButtonConstraints)
    }



}
