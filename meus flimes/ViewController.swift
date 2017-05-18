//
//  ViewController.swift
//  meus flimes
//
//  Created by Raphael Freitas dos Santos on 15/05/17.
//  Copyright © 2017 Raphael Freitas dos Santos. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmes: [Filme] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo: "OO7 - ", descricao: "Descricao 007", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)

        filme = Filme(titulo: "Star Wars", descricao: "Descricao Star Wars", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "Descricao Impacto Mortal", imagem:#imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Dead Pool", descricao: "Descricao Dead Pool", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        
        filme = Filme(titulo: "O regresso", descricao: "Descricao O regresso", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append(filme)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme = filmes[ indexPath.row ]
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath) as! FilmeCelula
        
        cell.filmeImageView.image = filme.imagem
        cell.descricaoLabel.text = filme.descricao
        cell.tituloLabel.text = filme.titulo
        
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueDestino" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let filme = self.filmes[ indexPath.row ]
                let viewControllerDestrino = segue.destination as! DetalhesViewController
                viewControllerDestrino.filme = filme
            }
        }
    }
    


}

