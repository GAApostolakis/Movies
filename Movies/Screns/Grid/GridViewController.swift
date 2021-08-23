//
//  GridController.swift
//  Movies
//
//  Created by George de Araújo Apostolakis on 18/08/21.
//

import UIKit

class GridViewController: UIViewController {
    private lazy var button: UIButton = {
        var view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellowMustard
        //setupButton:
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 75).isActive = true
        button.widthAnchor.constraint(equalToConstant: 75).isActive = true
        button.setTitle("Test", for: .normal)
        button.setTitleColor(.yellowMustard, for: .normal)
        button.backgroundColor = .black
    }
    @objc func dissmissView() {
        self.dismiss(animated: true, completion: nil)
    }
}
