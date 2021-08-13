//
//  GridViewController.swift
//  Movies
//
//  Created by George de Araújo Apostolakis on 17/07/21.
//

import UIKit

final class GridViewController: UIViewController {

    var mainView: MainView { return self.view as! MainView}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        self.view = MainView(frame: UIScreen.main.bounds)
    }

}

class MainView: UIView {
    override init(frame: CGRect) {
        super.init(frame:frame)
        self.backgroundColor = .white
        setupView()
        setupConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        self.addSubview(contentView)
        self.addSubview(likeButton)
    }
    
    func setupConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        contentView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
    }
    
    let contentView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100 ))
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    } ()
    
    let likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Like", for: .normal)
        return button
    }()
}
