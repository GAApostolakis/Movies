//
//  AppCoordinator.swift
//  Movies
//
//  Created by George de Araújo Apostolakis on 16/07/21.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        let gridVC = GridViewController()
        window?.rootViewController = gridVC
        window?.makeKeyAndVisible()
    }
}

