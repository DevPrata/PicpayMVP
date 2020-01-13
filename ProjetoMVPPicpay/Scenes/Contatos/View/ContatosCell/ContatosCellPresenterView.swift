//
//  ContatosCell.swift
//  ProjetoMVPPicpay
//
//  Created by Guilherme Prata Costa on 28/08/19.
//  Copyright © 2019 Guilherme Prata Costa. All rights reserved.
//

import UIKit
import Foundation


protocol ContatosCellPresenterView: class {
    func displayImage(image:UIImage)
    func displayLabels(usuario: String,nome: String)
}

