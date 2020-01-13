//
//  EndPoints.swift
//  
//
//  Created by Guilherme Prata Costa on 28/08/19.
//

import Foundation
import SVProgressHUD

class LoadingModal {
    public func showModal() {
        SVProgressHUD.setDefaultMaskType(.black)
        SVProgressHUD.setForegroundColor(Colors.brandPrimaryDark)
        SVProgressHUD.show()
    }
    
    public func dismissModal() {
        SVProgressHUD.dismiss()
    }
}
