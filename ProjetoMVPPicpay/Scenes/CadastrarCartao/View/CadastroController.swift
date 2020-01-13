//
//  CadastroController.swift
//  ProjetoMVPPicpay
//
//  Created by Guilherme Prata Costa on 30/08/19.
//  Copyright © 2019 Guilherme Prata Costa. All rights reserved.
//

import UIKit

class CadastroController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnCadastrar(_ sender: Any) {
        performSegue(withIdentifier: "segueCadastro", sender: sender)
    }
    
}
