//
//  ViewController.swift
//  ProjetoMVPPicpay
//
//  Created by Guilherme Prata Costa on 13/01/20.
//  Copyright © 2020 Guilherme Prata Costa. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    //MARK: SetupNavigationBar
    func setupNavigation(){
        let nav = navigationController?.navigationBar
        nav?.backIndicatorImage = #imageLiteral(resourceName: "outline_arrow_back_ios_black_18pt")
        nav?.tintColor = UIColor(red: 0.07, green: 0.78, blue: 0.44, alpha: 1)
        nav?.topItem?.title = ""
    }
    
}
