//
//  VXXRootViewController.swift
//  VXXUISet
//
//  Created by Volitation小星 on 17/5/27.
//  Copyright © 2017年 VolitationXiaoXing. All rights reserved.
//

import UIKit

class VXXRootTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabView = VXXTabBarView(frame:self.tabBar.bounds)
        tabView.RootTabBarController = self
        
        let base = VXXBaseViewController()
        base.view.backgroundColor = UIColor.red
        base.tabBarItem.title = "123"
        let item1 = VXXTabBarItem(title: "首页", imageNor: "shouye_off", imageSelect: "shouye_on")
        
        let base1 = VXXBaseViewController()
        base1.view.backgroundColor = UIColor.blue
        base1.tabBarItem.title = "2"
        let item2 = VXXTabBarItem(title: "列表页", imageNor: "paimai_off", imageSelect: "paimai_on")
        
        let base2 = VXXBaseViewController()
        base2.view.backgroundColor = UIColor.yellow
        base2.tabBarItem.title = "3"
        let item3 = VXXTabBarItem(title: "首页", imageNor: "wode_off", imageSelect: "wode_on")
        
        self.viewControllers = [base,base1,base2]
        tabView.tabBarItems = [item1,item2,item3]
        
        self.tabBar.addSubview(tabView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
