//
//  ContatosCell.swift
//  ProjetoMVPPicpay
//
//  Created by Guilherme Prata Costa on 28/08/19.
//  Copyright © 2019 Guilherme Prata Costa. All rights reserved.
//

import UIKit

let mCell = "usuarioCell"

class ContatosCell: UITableViewCell {

    @IBOutlet weak var imagemPerfil: UIImageView!
    @IBOutlet weak var nomeUsuario: UILabel!
    @IBOutlet weak var nomeCompletoUsuario: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension ContatosCell: ContatosCellPresenterView{
    func displayImage(image: UIImage) {
        imagemPerfil.image = image
    }
    
    func displayLabels(usuario: String, nome: String) {
        nomeUsuario.text = usuario
        nomeCompletoUsuario.text = nome
    }
    
}
