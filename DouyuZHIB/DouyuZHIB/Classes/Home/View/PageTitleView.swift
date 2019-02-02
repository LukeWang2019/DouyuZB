//
//  PageTitleView.swift
//  DouyuZHIB
//
//  Created by luke on 01/02/2019.
//  Copyright © 2019 luke. All rights reserved.
//

import UIKit

let kScrollViewH : CGFloat = 2


/// 可滑动点击视图
class PageTitleView: UIView {
    // MARK: - 定义属性
    private var titles:[String]
    
    // MARK: - 懒加载属性
    private lazy var scrollView:UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.isPagingEnabled = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        
        return scrollView
    }()
    
    private lazy var titleLabels:[UILabel] = [UILabel]()
    private lazy var scrollLine:UIView = {
       let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()
    
    init(frame: CGRect ,titleArray:[String]) {
        self.titles = titleArray
        super.init(frame:frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
// MARK: - 设置UI界面
extension PageTitleView{
    
    private func setupUI(){
        // 添加scrollView
        addSubview(scrollView)
        scrollView.frame = bounds
        
        //添加title对应的Label
        setupTitleLabels()
        
    }
    
    private func setupTitleLabels(){
        for(index,title) in titles.enumerated(){
            //创建UILabel
            let label = UILabel()
            
            //设置UILabel的属性
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
            
            //设置label的frame
            let labelW : CGFloat = frame.width / CGFloat(title.count)
            let labelH : CGFloat = frame.height - kScrollViewH
            let labelX : CGFloat = labelW * CGFloat(index)
            let labelY : CGFloat = 0
            
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            
            scrollView.addSubview(label)
            
            
            
        }
    }
}
