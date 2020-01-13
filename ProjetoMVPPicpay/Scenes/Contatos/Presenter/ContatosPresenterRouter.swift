//
//  ContatosPresenter.swift
//  
//
//  Created by Guilherme Prata Costa on 28/08/19.
//

import Foundation
import UIKit

class ContatosPresenterRouter {
    
    private let cartao = "segueCadastrarCartao"
    
    private weak var viewController: ContatosViewController?
    
    init(_ viewController: ContatosViewController) {
        self.viewController = viewController
    }
    
    //MARK: PresentDetailMovie
    func presentDetail(usuario: Usuario) {
        viewController?.performSegue(withIdentifier: cartao, sender: usuario)
    }
    
    // MARK: Navigation
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? CadastroController {
            //vc.presenter.movie = sender as? Usuario
        }
        
    }
}
