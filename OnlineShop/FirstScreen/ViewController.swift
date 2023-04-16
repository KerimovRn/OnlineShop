//
//  ViewController.swift
//  OnlineShop
//
//  Created by mac on 16.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func skipButtonAction(_ sender: UIButton) {
        let tabbar = TabBarViewController() 
        tabbar.modalPresentationStyle = .overFullScreen
        self.present(tabbar, animated: true)
    }
    
}

