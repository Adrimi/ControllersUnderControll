//
//  ViewController.swift
//  ControllersUnderControll
//
//  Created by adrian.szymanowski on 20/02/2020.
//  Copyright © 2020 adrian.szymanowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func sequeTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detail", sender: nil)
    }
    
    @IBAction func navigationControllerTapped(_ sender: UIButton) {
        let vc = DetailViewController.init()
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func presentNavigationController(_ sender: UIButton) {
        let vc = DetailViewController.init()
        
        let nc = UINavigationController.init(rootViewController: vc)
        nc.modalPresentationStyle = .fullScreen
        
        present(nc, animated: true)
    }
    
    @IBAction func presentViewController(_ sender: UIButton) {
        let vc = DetailViewController.init()
        vc.modalPresentationStyle = .automatic
        
        present(vc, animated: true)
    }

}

