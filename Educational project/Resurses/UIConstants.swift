    //
//  UIConstants.swift
//  Educational project
//
//  Created by Никита  on 15.2.2025.
//

import UIKit

enum UIConstants {
    
    enum Colors {
        static let textColor = UIColor.black
        static let primaryBackground = UIColor.white
        static let secondaryBackground = UIColor.lightGray
        
    }
    
    enum Fonts {
        static let titleH1 = UIFont.systemFont(ofSize: 24, weight: .black)
        static let titleH2 = UIFont.systemFont(ofSize: 20, weight: .bold)
        static let bodyText = UIFont.systemFont(ofSize: 16, weight: .regular)
    }
    
    enum ConstantMargin {
        static let xl: CGFloat = 24
        static let l: CGFloat = 20
        static let m: CGFloat = 16
        static let s: CGFloat = 12
        static let xs: CGFloat = 8
    }
    
    enum MainLogo {
        static let logo = UIImage(named: "mainLogo")
        
        struct Size {
            static let width: CGFloat = 200
            static let height: CGFloat = 200
        }
    }
    
    enum AnimationConstants {
        static let initialScale: CGFloat = 0.5
        static let finalScale: CGFloat = 1.0
        static let rotationAngle: CGFloat = CGFloat.pi / 7
        static let fadeInDuration: CGFloat = 1.5
        static let animationDelay: TimeInterval = 0 
    }
    
}
