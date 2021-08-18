//
//  SceneDelegate.swift
//  Movies
//
//  Created by George de Araújo Apostolakis on 16/07/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var appCoordinator: Coordinator?
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: .zero)
        window?.windowScene = scene
        appCoordinator = AppCoordinator(window: window)
        appCoordinator?.start()
    }
}

