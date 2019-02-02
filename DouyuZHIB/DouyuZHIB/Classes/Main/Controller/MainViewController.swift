//
//  MainViewController.swift
//  DouyuZHIB
//
//  Created by luke on 31/01/2019.
//  Copyright © 2019 luke. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildController(controllerName: "Home")
        addChildController(controllerName: "Live")
        addChildController(controllerName: "Follow")
        addChildController(controllerName: "Profile")
        
    }
    
    
    private func addChildController(controllerName:String){
        let childVc = UIStoryboard(name: controllerName, bundle: nil).instantiateInitialViewController()!
        addChild(childVc);
        
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
