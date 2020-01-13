//
//  Transação.swift
//  ProjetoMVPPicpay
//
//  Created by Guilherme Prata Costa on 28/08/19.
//  Copyright © 2019 Guilherme Prata Costa. All rights reserved.
//

import Foundation

struct Transacao:Codable {
    var card_number:Int
    var cvv:Int
    var value:Int
    var expiry_date:String
    var destination_user_id: Int
}
