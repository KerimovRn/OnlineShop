//
//  TabBarViewController.swift
//  OnlineShop
//
//  Created by mac on 16.04.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = UIColor._E7544D
        viewControllers = createViewControllers()
    }
    
    func createViewControllers() -> [UIViewController] {
        let mainVC = MainViewController()
        mainVC.tabBarItem = UITabBarItem(title: "Главная", image: UIImage(named: "MainTabBarItem"), selectedImage: nil)
        
        let catalogVC = UIViewController()
        catalogVC.view.backgroundColor = .white
        catalogVC.tabBarItem = UITabBarItem(title: "Каталог", image: UIImage(named: "CatalogTabBarItem"), selectedImage: nil)
       
        // Досоздать все контроллеры
       
        return [mainVC, catalogVC]
    }
}



