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
            var index:CGFloat = 0
            for item in tabBarItems{
                
                item.height = self.height
                item.width = self.width / CGFloat(tabBarItems.count)
                item.y = 0
                item.x = index * item.width
                
                self.addSubview(item)
                index += 1
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
    var image:UIImage? = UIImage()
    
    convenience init(title:String,image:UIImage? = nil) {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
         self.title = title
         self.image = image
        self.titleLabel?.text = title
        self.imageView?.image = image
        self.backgroundColor = UIColor.white
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.titleLabel?.sizeToFit()
        self.imageView?.sizeToFit()
    }
}
