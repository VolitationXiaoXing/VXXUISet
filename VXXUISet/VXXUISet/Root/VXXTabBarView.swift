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


class VXXTabBarItem: UIView{
    
    var title:String = ""
    var titleLabel:UILabel = UILabel()
    var imageView:UIImageView = UIImageView()
    
    var index = 0
    
    var isSelect:Bool?{
        didSet{
            if self.isSelect == nil{
                return
            }
            
            self.imageView.isHighlighted = isSelect!
        }
    }
    
    var onViewClickedCallBack:(()->())?
    
    convenience init(title:String,imageNor:String,imageSelect:String) {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        self.title = title
        self.imageView.image = UIImage(named: imageNor)
        self.imageView.highlightedImage = UIImage(named: imageSelect)
        
        
        self.titleLabel.text = self.title
        self.titleLabel.textColor = UIColor.black
        self.titleLabel.font = UIFont.systemFont(ofSize:10)
        
        
        self.backgroundColor = UIColor.white
        self.addSubview(self.titleLabel)
        self.addSubview(self.imageView)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(VXXTabBarItem.onViewClicked(index:)))
        self.addGestureRecognizer(tap)
    }
    
    func onViewClicked(index:Int) {
        
        self.isSelect = !self.isSelect
        
        
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.imageView.sizeToFit()
        self.titleLabel.sizeToFit()
        
        
        self.titleLabel.x = (self.width - self.titleLabel.width) * 0.5
        self.imageView.x = (self.width - self.imageView.width) * 0.5
        
        let margin:CGFloat = 2
        
        self.imageView.y = (self.height - self.imageView.height - self.titleLabel.height - margin) * 0.5
        
        self.titleLabel.y = self.imageView.y + self.imageView.height + margin
        
    }
}
