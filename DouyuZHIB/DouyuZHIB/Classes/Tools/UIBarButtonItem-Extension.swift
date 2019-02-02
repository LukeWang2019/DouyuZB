//
//  UIBarButtonItem-Extension.swift
//  DouyuZHIB
//
//  Created by luke on 31/01/2019.
//  Copyright © 2019 luke. All rights reserved.
//

import Foundation
import UIKit

//struct Size {
//    var width = 0.0, height = 0.0
//}
//struct Point {
//    var x = 0.0, y = 0.0
//}
//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//}
//
//extension Rect {
//    init(center: Point, size: Size) {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
//        self.init(origin: Point(x: originX, y: originY), size: size)
//    }
//}

extension UIBarButtonItem{
    //类方法实现
    class func createItem(imageName:String,highImageName:String,size:CGSize) ->UIBarButtonItem{
        let btn = UIButton();
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        
        return UIBarButtonItem(customView: btn)
    }
    
    
    //便利构造函数：1> convenience
    convenience init(name:String ,highImageName:String ,size:CGSize){
        let btn = UIButton()
        
        btn.setImage(UIImage(named: name), for: .normal)
        btn.setImage(UIImage(named: highImageName), for: .highlighted)
        
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        self.init(customView: btn)
    }
}


