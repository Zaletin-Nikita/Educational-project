//
//  SplashViewController.swift
//  Educational project
//
//  Created by Никита  on 30.1.2025.
//

import UIKit
import SnapKit

class SplashViewController: UIViewController {
    
    // MARK: - Properties
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("logo_text", comment: "")
        label.textColor = UIConstants.Colors.textColor
        label.font = UIConstants.Fonts.titleH1
        return label
        
        
    }()
    
    private lazy var logo: UIImageView = {
        let logo = UIImageView()
        logo.image =  UIConstants.MainLogo.logo
        return logo
    }()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        animateLogo()
    }
    
    // MARK: - UI
    
    private func setupUI() {
        view.backgroundColor = UIConstants.Colors.primaryBackground
        
        // Adding elements
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(UIConstants.ConstantMargin.xl)
            $0.centerX.equalToSuperview()
        }
        
        view.addSubview(logo)
        logo.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.width.equalTo(UIConstants.MainLogo.Size.width)
            $0.height.equalTo(UIConstants.MainLogo.Size.height)
        }
    }
    
    // MARK: - Animations
    
    private func animateLogo() {
        logo.transform = CGAffineTransform(scaleX: UIConstants.AnimationConstants.initialScale, y: UIConstants.AnimationConstants.initialScale)
        
        UIView.animate(withDuration: UIConstants.AnimationConstants.fadeInDuration, delay: UIConstants.AnimationConstants.animationDelay, options: .curveEaseOut, animations: {
            self.logo.transform = CGAffineTransform(scaleX: UIConstants.AnimationConstants.finalScale, y: UIConstants.AnimationConstants.finalScale)
            self.logo.transform = CGAffineTransform(rotationAngle: UIConstants.AnimationConstants.rotationAngle)
        }) { _ in
            DispatchQueue.main.asyncAfter(deadline: .now()){
                let walletVC = WalletViewController()
                walletVC.modalTransitionStyle = .crossDissolve
                walletVC.modalPresentationStyle = .fullScreen
                self.present(walletVC, animated: true, completion: nil)
            }
        }
    }
}
