//
//  ViewController.swift
//  SignosApp
//
//  Created by Daniel Albuquerque on 22/04/22.
//

import UIKit

class ViewController: UITableViewController {
    var signos: [String] = [];
    var signosSignificados: [String] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        signos.append("Libra")
        signos.append("Capricornio")
        
        signosSignificados.append("Libriano")
        signosSignificados.append("Caprica")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Significado do signo", message: signosSignificados[indexPath.row], preferredStyle: .alert)
        
        let confirmAction =  UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alertController.addAction(confirmAction)
        
        present(alertController, animated: true, completion: nil)
    }


}

