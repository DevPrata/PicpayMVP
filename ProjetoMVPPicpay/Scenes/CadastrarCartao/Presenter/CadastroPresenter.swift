//
//  CadastroPresenter.swift
//  ProjetoMVPPicpay
//
//  Created by Guilherme Prata Costa on 13/01/20.
//  Copyright © 2020 Guilherme Prata Costa. All rights reserved.
//

import Foundation

class CadastroPresenter {
    private weak var view:CadastroPresenterView!
    private var router: CadastroPresenterRouter
    
    init(view: CadastroPresenterView, router: CadastroPresenterRouter) {
        self.view = view
        self.router = router
    }
    
    public func validarCartao(txtFieldNumeroCartao:TextFieldMaterialDesign, txtFieldTitular:TextFieldMaterialDesign, txtFieldVencimento: TextFieldMaterialDesign, txtFieldCVV: TextFieldMaterialDesign) -> Bool{
        
        guard let numeroCartao = txtFieldNumeroCartao.text else { print("Textfield numero do cartao nil"); return false}
        guard let titular = txtFieldTitular.text else {print("Textfield titular nil"); return false}
        guard let vencimento = txtFieldVencimento.text else { print("Textfield vencimento nil"); return false}
        guard let cvv = txtFieldCVV.text else {print("Textfield CVV nil"); return false}
        
        if (!numeroCartao.isEmpty && !titular.isEmpty && !vencimento.isEmpty && !cvv.isEmpty){
            return true
        }else{
            return false
        }
    }
}
