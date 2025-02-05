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
        initializeUIComponents()
        setupUI()
    }
    
    private var label = UILabel()
    private var logo = UIImageView()
    
    private func initializeUIComponents(){
        // Лейбл
        
        label.text = "CryptoLab"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .black)
        label.translatesAutoresizingMaskIntoConstraints = false
 
        
        //Логотип
        
        logo.image = UIImage(named: "osmosis-osmo-logo.png")
        logo.translatesAutoresizingMaskIntoConstraints = false

    }
    
    private func setupUI() {
        view.backgroundColor = .white
        // Доболение элементов
        view.addSubview(label)
        view.addSubview(logo)
        
        // Констрейты 
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
