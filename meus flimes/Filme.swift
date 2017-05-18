//
//  Filme.swift
//  meus flimes
//
//  Created by Raphael Freitas dos Santos on 15/05/17.
//  Copyright © 2017 Raphael Freitas dos Santos. All rights reserved.
//

import UIKit

class Filme {
    
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String, imagem: UIImage){
        self.titulo =  titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
