//
//  CadastroController.swift
//  ProjetoMVPPicpay
//
//  Created by Guilherme Prata Costa on 30/08/19.
//  Copyright © 2019 Guilherme Prata Costa. All rights reserved.
//

import UIKit
import SVProgressHUD


class CadastroController: UIViewController {

    @IBOutlet weak var numeroCartao: TextFieldMaterialDesign!
    @IBOutlet weak var nomeTitular: TextFieldMaterialDesign!
    @IBOutlet weak var vencimento: TextFieldMaterialDesign!
    @IBOutlet weak var numeroCVV: TextFieldMaterialDesign!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnCadastrar(_ sender: Any) {
        performSegue(withIdentifier: "segueCadastro", sender: sender)
    }
    
}

extension CadastroController:CadastroPresenterView{
    func startLoading() {
        DispatchQueue.main.async {
            SVProgressHUD.setBackgroundColor(.black)
            SVProgressHUD.setDefaultMaskType(.clear)
            SVProgressHUD.setForegroundColor(Colors.brandPrimaryDark)
            SVProgressHUD.show()
        }
    }
    
    func stopLoading() {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
        }
    }
    
    
}
