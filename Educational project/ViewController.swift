//
//  ViewController.swift
//  Educational project
//
//  Created by Никита  on 29.1.2025.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let label = UILabel()
        label.text = "DeFiHub"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        view.addSubview(label)

        let imageView = UIImageView()
        imageView.frame = CGRect(x: 50, y: 220, width: 300, height: 300)
        imageView.image = UIImage(named: "cosmos-atom-logo")
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView);

    }
}
