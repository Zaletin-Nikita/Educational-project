//
//  SceneDelegate.swift
//  Educational project
//
//  Created by Никита  on 29.1.2025.
//
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Создаём окно с размерами экрана
        window = UIWindow(windowScene: windowScene)
        window?.frame = UIScreen.main.bounds

        // Устанавливаем главный экран
        let splashViewController = SplashViewController()  // Экран загрузки
        window?.rootViewController = splashViewController

        // Делаем окно видимым
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Ресурсы, связанные с сценой, могут быть освобождены здесь
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Сцена активировалась
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Сцена будет неактивной
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Сцена вернулась в активное состояние
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Сцена ушла в фоновый режим
    }
}

