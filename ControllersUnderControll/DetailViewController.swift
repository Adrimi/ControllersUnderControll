//
//  DetailViewController.swift
//  ControllersUnderControll
//
//  Created by adrian.szymanowski on 20/02/2020.
//  Copyright © 2020 adrian.szymanowski. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let gradientView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // This line of code is valid for presenting from navigationController.
        // Segue do not use it, because it is set in storyboard
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        gradientView.backgroundColor = .clear
        gradientView.frame = view.frame
        gradientView.alpha = 0.2
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.purple.cgColor, UIColor.systemPink.cgColor]
        gradientLayer.frame = gradientView.frame
        
        gradientView.layer.addSublayer(gradientLayer)
        view.addSubview(gradientView)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 1.5, animations: {
            self.gradientView.alpha = 0.8
        }) { _ in
            self.dismiss(animated: true)
        }
    }
}
