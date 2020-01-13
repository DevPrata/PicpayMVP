//
//  CadastroRouter.swift
//  ProjetoMVPPicpay
//
//  Created by Guilherme Prata Costa on 13/01/20.
//  Copyright © 2020 Guilherme Prata Costa. All rights reserved.
//

import Foundation
import UIKit

class CadastroPresenterRouter {
    
    private let cartao = "segueCadastrarCartao"
    
    private weak var viewController: CadastroController?
    
    init(_ viewController: CadastroController) {
        self.viewController = viewController
    }
    
    //MARK: PresentDetailMovie
    func presentDetail(usuario: Usuario) {
        viewController?.performSegue(withIdentifier: cartao, sender: usuario)
    }
    
    // MARK: Navigation
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //if let vc = segue.destination as? CadastroController {
            //vc.presenter.movie = sender as? Usuario
        //}
        
    }
}
