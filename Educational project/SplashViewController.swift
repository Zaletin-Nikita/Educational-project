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

        view.backgroundColor = .white // Фон экрана
        showLogo()
    }

    func showLogo() {
        let logo = UIImageView(image: UIImage(named: "logo"))
        logo.frame = CGRect(x: 100, y: 300, width: 200, height: 200)
        logo.image = UIImage(named: "cosmos-atom-logo")
        logo.contentMode = .scaleAspectFit
        view.addSubview(logo)
        
    
        // Анимация исчезновения и переход на главный экран
        UIView.animate(withDuration: 1.5, delay: 2, options: .curveEaseOut, animations: {
            logo.alpha = 0
        }) { _ in
            self.goToMainScreen()
        }
    }

    func goToMainScreen() {
        let mainVC = ViewController() // Заменить на твой главный экран
        mainVC.modalTransitionStyle = .crossDissolve
        mainVC.modalPresentationStyle = .fullScreen
        present(mainVC, animated: true)
    }
}
