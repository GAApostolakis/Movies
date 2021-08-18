//
//  LaunchScreen.swift
//  Movies
//
//  Created by George de Araújo Apostolakis on 17/08/21.
//

import UIKit

class LaunchScreen: UIViewController {
    private lazy var logoImage: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellowMustard
        view.addSubview(logoImage)
        //logoImage.image = UIImage(named: "movsLogo")
        logoImage.image = #imageLiteral(resourceName: "movsLogo")
        logoImage.contentMode = .scaleAspectFit
        logoImage.backgroundColor = UIColor.yellowMustard
        
        logoImage.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        logoImage.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
