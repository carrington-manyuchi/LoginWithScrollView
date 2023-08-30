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
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    
    private let loginButton: UIButton = {
        let button = UIButton()
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
            
            
        
        NSLayoutConstraint.activate(loginLayerConstraints)
            NSLayoutConstraint.activate(composeImageViewConstraints)
    }



}
