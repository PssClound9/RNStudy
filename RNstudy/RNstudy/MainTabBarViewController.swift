//
//  MainTabBarViewController.swift
//  RNstudy
//
//  Created by a on 2019/4/22.
//  Copyright © 2019 a. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    class func CustomTabBar() ->UITabBarController {
        
        
        let tabBarVC =  MainTabBarViewController()
    
        let mainVC = MainViewController()
        let mainNav = UINavigationController(rootViewController: mainVC)
        mainNav.tabBarItem.title = "首页"
        mainNav.tabBarItem.image = UIImage(named: "nav_main")
        
        let categoryVC = CategoryViewController()
        let categoryNav = UINavigationController(rootViewController: categoryVC)
        categoryNav.tabBarItem.title = "分类"
        categoryNav.tabBarItem.image = UIImage(named: "nav_category")
        
        let shopCartVC = ShopCartViewController()
        let shopCartNav = UINavigationController(rootViewController: shopCartVC)
        shopCartNav.tabBarItem.title = "购物车"
        shopCartNav.tabBarItem.image = UIImage(named: "nav_shopCart")
        
        let mineVC = MineViewController()
        let mineNav = UINavigationController(rootViewController: mineVC)
        mineNav.tabBarItem.title = "我的"
        mineNav.tabBarItem.image = UIImage(named: "nav_mine")
        
        let navItems = [mainNav,categoryNav,shopCartNav,mineNav]
        tabBarVC.viewControllers = navItems;

        return tabBarVC
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
