//
//  VXXTabBarView.swift
//  VXXUISet
//
//  Created by Volitation小星 on 17/5/27.
//  Copyright © 2017年 VolitationXiaoXing. All rights reserved.
//

import UIKit

class VXXTabBarView: UIView {
    
    weak var RootTabBarController:VXXRootTabBarController?
    var tabBarItems:[VXXTabBarItem]{
        didSet{
            for item in tabBarItems{
                
                
                self.addSubview(item)
            }
        }
    }

    override init(frame: CGRect) {
        self.tabBarItems = []
        super.init(frame: frame)
        self.backgroundColor = UIColor.green
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


class VXXTabBarItem: UIButton{
    var title:String = ""
    var image:UIImage = UIImage()
    
    convenience init(title:String,image:UIImage) {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    
}
