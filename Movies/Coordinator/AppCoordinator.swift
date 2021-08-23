//
//  AppCoordinator.swift
//  Movies
//
//  Created by George de Araújo Apostolakis on 16/07/21.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var window: UIWindow?
    var loginVC: LoginViewController?
    var currentVC: UIViewController?
    var user: String?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        let launchVC = LaunchScreen()
        let viewModel = LoginViewModelImp1(coordinator: self)
        loginVC = LoginViewController(viewModel: viewModel)
        window?.rootViewController = launchVC
        window?.makeKeyAndVisible()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            self.window?.rootViewController = self.loginVC
            self.window?.makeKeyAndVisible()
        })
        currentVC = loginVC
    }
    
    func startNav() {
        
        let gridVC = GridViewController()
        gridVC.title = "Home Page"
        let nav1 = UINavigationController(rootViewController: gridVC)
        nav1.modalPresentationStyle = .fullScreen
        nav1.modalTransitionStyle = .flipHorizontal
        currentVC?.present(nav1, animated: true, completion: nil)
    }
    
    func loginInfo(user: String, password: String) {
        self.user = user
    }
}

