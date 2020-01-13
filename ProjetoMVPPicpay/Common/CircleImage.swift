//
//  CircleImage.swift
//  
//
//  Created by Guilherme Prata Costa on 28/08/19.
//

import Foundation
import UIKit

class CircleImage: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 24 {
        didSet {
            layer.cornerRadius = cornerRadius
            clipsToBounds = true
        }
    }
    
}
