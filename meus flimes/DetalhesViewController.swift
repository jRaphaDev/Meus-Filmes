//
//  DetalhesViewController.swift
//  meus flimes
//
//  Created by Raphael Freitas dos Santos on 15/05/17.
//  Copyright © 2017 Raphael Freitas dos Santos. All rights reserved.
//

import Foundation
import UIKit

class DetalhesViewController: UIViewController {
    
    var filme: Filme!
    
    @IBOutlet weak var filmeImage: UIImageView!
    @IBOutlet weak var descricaoLabel: UILabel!
    @IBOutlet weak var tituloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmeImage.image = filme.imagem
        descricaoLabel.text = filme.descricao
        tituloLabel.text = filme.titulo
    }
    
}
