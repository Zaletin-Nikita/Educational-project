//
//  SplashViewController.swift
//  Educational project
//
//  Created by Никита  on 30.1.2025.
//

import UIKit

class SplashViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    var label = UILabel()
    var logo = UIImageView(image: UIImage(named: "cosmos-atom-logo.svg"))
    
    private func setupUI() {
        
        label.text = "CryptoLab"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .black)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        

        logo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logo)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            logo.widthAnchor.constraint(equalToConstant: 200),
            logo.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }
    
}
