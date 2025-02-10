//
//  ViewController.swift
//  Educational project
//
//  Created by Никита  on 29.1.2025.
//

import UIKit

class WalletViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let tableView = UITableView()
    private let headerView = UIView()
    private let walletTitleLabel = UILabel()
    private let walletAddressLabel = UILabel()
    
    private let assets = Array (repeating: "ETH", count: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        initializeUIComponents()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    private func setupUI(){
        view.backgroundColor = .white
        view.addSubview(tableView)
        view.addSubview(headerView)
        view.addSubview(walletTitleLabel)
        view.addSubview(walletAddressLabel)
        
        
        // Отключаем autoresizing mask В ТОМ ПОРЯДКЕ В КОТОРОМ ОНИ НА ЭКРАНЕ ?ЭТО ДЛЯ УДОБСТВА ?
        headerView.translatesAutoresizingMaskIntoConstraints = false
        walletTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        walletAddressLabel.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        // Констрейты
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 100),
            
            walletTitleLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 10),
            walletTitleLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            
            walletAddressLabel.topAnchor.constraint(equalTo: walletTitleLabel.bottomAnchor, constant: 5),
            walletAddressLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            
            tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
 
        ])
   
    }
    
    private func initializeUIComponents(){
        
        // Настройка шапки
        
        headerView.backgroundColor = .lightGray
        
        // Настройка заголовка для walletTtileLabel
        
        walletTitleLabel.text = "WALLET 1"
        walletTitleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        walletTitleLabel.textAlignment = .center
        
        // Настройка подзаголовка для walletAddressLabel
        
        walletAddressLabel.text = "0xhea87...3b66"
        walletAddressLabel.font = UIFont.systemFont(ofSize: 16)
        walletAddressLabel.textAlignment = .center
        
        //  Настройка TableView
        
        tableView.delegate = self
        tableView.dataSource = self
       
        tableView.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 30, right: 0)
        
    }
    
    // ВОТ ТУТ ПОКА НЕ ПОНЯТНО
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return assets.count
    }
    
    // ВОТ ТУТ ПОКА НЕ ПОНЯТНО
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .clear

        let content = UIView()
        content.backgroundColor = .lightGray
        content.layer.cornerRadius = 10
        content.translatesAutoresizingMaskIntoConstraints = false
        
        cell.contentView.addSubview(content)
        
        NSLayoutConstraint.activate([
            content.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 5),
            content.bottomAnchor.constraint(equalTo: cell.contentView.bottomAnchor, constant: -5),
            content.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 15),
            content.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -15)
        ])
        
        let nameLabel = UILabel()
        nameLabel.text = "\(assets[indexPath.row])"
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        content.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: content.centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: content.leadingAnchor, constant: 15)
        ])
        
        let valueLabel = UILabel()
        valueLabel.text = "0.00"
        valueLabel.textAlignment = .right
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        
        content.addSubview(valueLabel)
        
        NSLayoutConstraint.activate([
            valueLabel.centerYAnchor.constraint(equalTo: content.centerYAnchor),
            valueLabel.trailingAnchor.constraint(equalTo: content.trailingAnchor, constant:  -15)
            
        ])
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60 // Высота ячейки (можешь изменить)
    }
  
}
