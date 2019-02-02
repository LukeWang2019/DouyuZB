//
//  HomeViewController.swift
//  DouyuZHIB
//
//  Created by luke on 31/01/2019.
//  Copyright © 2019 luke. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //设置ui界面
        setupUI()
    }

}

extension HomeViewController{
    private func setupUI(){
        //1.设置导航栏
        setupNavigationBar()
    }
    
    private func setupNavigationBar(){
        let btn = UIButton()
        btn.setImage(UIImage(named:"logo"), for: .normal)
        btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        
        //设置右边按钮视图
        let  size = CGSize(width: 40, height: 40)
        
        let historyItem = UIBarButtonItem.init(name: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(name: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(name: "Image_scan", highImageName: "Image_scan_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
        
        
    }
}
