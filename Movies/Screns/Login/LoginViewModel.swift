//
//  LoginViewModel.swift
//  Movies
//
//  Created by George de Araújo Apostolakis on 17/08/21.
//

import Foundation

protocol LoginViewModel {
    var didStartActivity: (() -> Void)? {get set}
    var didEndActivity: (() -> Void)? {get set}
    
    func login(user: String, password: String)
}

final class LoginViewModelImp1: LoginViewModel {
    var coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    var didStartActivity: (() -> Void)?
    var didEndActivity: (() -> Void)?
    
    func login(user: String, password: String) {
        didStartActivity?()
        coordinator.loginInfo(user: user, password: password)
        coordinator.startNav()
        didEndActivity?()
    }
}
