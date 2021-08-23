//
//  GridViewController.swift
//  Movies
//
//  Created by George de Araújo Apostolakis on 17/07/21.
//

import UIKit

final class LoginViewController: UIViewController {
    
//MARK: - Add UI Elements
    private lazy var logoImage: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var loginLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var passwordLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var loginTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var passwordTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var loginButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var activityIndicator: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(frame: UIScreen.main.bounds)
        view.style = .medium
        view.hidesWhenStopped = true
        view.color = .green
        return view
    }()
    
//MARK: - variables
    var viewModel: LoginViewModel
    
//MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubViews()
        setupUI()
        setupConstraints()
        setupBindings()
    }
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    @objc func login() {
        viewModel.login(user: loginTextField.text ?? "", password: passwordTextField.text ?? "")
    }
}

//MARK: - Extension - SETUP UI

extension LoginViewController {
    func addSubViews() {
        view.addSubview(logoImage)
        view.addSubview(loginLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
    }
    func setupUI() {
        //logoImageSetup:
        logoImage.image = UIImage(named: "movsLogo")
        logoImage.backgroundColor = UIColor.background
        logoImage.layer.cornerRadius = 10
        logoImage.layer.masksToBounds = true
        
        //loginLabelSetup:
        loginLabel.text = "User:"
        loginLabel.textAlignment = .center
        loginLabel.backgroundColor = UIColor.yellowMustard
        loginLabel.textColor = UIColor.black
        loginLabel.layer.cornerRadius = 10
        loginLabel.layer.masksToBounds = true //Por que apenas Labels?
        //passwordLabelSetup:
        passwordLabel.text = "Password:"
        passwordLabel.textAlignment = .center
        passwordLabel.backgroundColor = UIColor.yellowMustard
        passwordLabel.textColor = UIColor.black
        passwordLabel.layer.cornerRadius = 10
        passwordLabel.layer.masksToBounds = true  //Por que apenas Labels?
        //loginTextFieldSetup:
        loginTextField.backgroundColor = UIColor.lightGray
        loginTextField.textColor = UIColor.black
        loginTextField.placeholder = "User"
        loginTextField.textAlignment = .center
        loginTextField.autocapitalizationType = .none
        loginTextField.layer.cornerRadius = 10
        //passwordTextFieldSetup:
        passwordTextField.backgroundColor = UIColor.lightGray
        passwordTextField.textColor = UIColor.black
        passwordTextField.placeholder = "Password"
        passwordTextField.textAlignment = .center
        passwordTextField.isSecureTextEntry = true
        passwordTextField.autocapitalizationType = .none
        passwordTextField.layer.cornerRadius = 10
        //loginButtonSetup:
        loginButton.setTitle("Login", for: .normal) //State of Control??
        loginButton.backgroundColor = UIColor.yellowMustard
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        loginButton.layer.cornerRadius = 10
        loginButton.layer.masksToBounds = true
    }
    
    func setupConstraints() {
        
        logoImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoImage.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        //setupConstrains
        loginLabel.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: -50).isActive = true
        loginLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        loginLabel.trailingAnchor.constraint(equalTo: self.loginTextField.leadingAnchor, constant: -10).isActive = true
        loginLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true

        loginTextField.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: -50).isActive = true
        loginTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        loginTextField.leadingAnchor.constraint(equalTo: self.loginLabel.trailingAnchor, constant: 10).isActive = true
        loginTextField.widthAnchor.constraint(equalTo:self.loginLabel.widthAnchor).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true

        passwordLabel.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 30).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: self.loginTextField.leadingAnchor, constant: -10).isActive = true
        passwordLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true

        passwordTextField.topAnchor.constraint(equalTo: self.loginTextField.bottomAnchor, constant: 30).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: self.loginLabel.trailingAnchor, constant: 10).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo:self.loginLabel.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true

        loginButton.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 60).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
    }
    
    func setupBindings() {
        viewModel.didStartActivity = {[weak self] in
            self?.activityIndicator.startAnimating()
        }
        viewModel.didEndActivity = {[weak self] in
            self?.activityIndicator.stopAnimating()
        }
    }
}
