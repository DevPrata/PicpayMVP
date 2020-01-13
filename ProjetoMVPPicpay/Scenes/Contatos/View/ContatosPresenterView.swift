//
//  ContatosPresenterView.swift
//  ProjetoMVPPicpay
//
//  Created by Guilherme Prata Costa on 28/08/19.
//  Copyright © 2019 Guilherme Prata Costa. All rights reserved.
//

import Foundation

protocol ContatosPresenterView: class {
    func startLoading()
    func stopLoading()
    func reloadData()
}
