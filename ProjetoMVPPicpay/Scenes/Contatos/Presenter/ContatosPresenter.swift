//
//  ContatosPresenter.swift
//  
//
//  Created by Guilherme Prata Costa on 28/08/19.
//

import Foundation
import UIKit
import Alamofire

class ContatosPresenter {
    
    private weak var view:ContatosPresenterView!
    private var router: ContatosPresenterRouter
    
    var usuarios: [Usuario] = []

    //Filtro
    var filtered: [Usuario] = []
    var isFiltered: Bool = false
    
    init (view: ContatosPresenterView, router: ContatosPresenterRouter){
        self.view = view
        self.router = router
    }
    
    //MARK: ViewDidLoad
    func viewDidLoad(){
        view.startLoading()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) { [weak self] in
            self?.getUsuario()
        }
    }
    
    //MARK: Network
    private func getUsuario(){
        Alamofire.request("http://careers.picpay.com/tests/mobdev/users",method: .get).responseJSON { (response) in
            if let data = response.data {
                do{
                    let json = try JSONDecoder().decode([Usuario].self, from: data)
                    for usuario in json{
                        self.usuarios.append(usuario)
                    }
                    self.view.reloadData()
                    self.view.stopLoading()
                    
                }catch{
                    print(error)
                }
            }
        }
        
    }
    
    
    //MARK: onDidSelect
    func onDidSelectRowAt(for row: Int, isActive: Bool) {
        if isActive {
            router.presentDetail(usuario: filtered[row])
        } else {
            router.presentDetail(usuario:usuarios[row])
        }
    }

    func configureCell(_ cell: ContatosCellPresenterView, for row: Int) {
        var image: String?
        
        if isFiltered {
            image = filtered[row].img
            cell.displayLabels(usuario: filtered[row].username, nome: filtered[row].name)
        } else {
            image = usuarios[row].img
            cell.displayLabels(usuario: usuarios[row].username, nome: usuarios[row].username)
        }
        
        guard let i = image else { return }
 
        Alamofire.request(i, method: .get)
         .validate()
         .responseData(completionHandler: { (responseData) in
            
            cell.displayImage(image: UIImage(data: responseData.data!)!)

        })
    }
    
    func filtered(_ searchText: String, scope: String = "All") {
        if searchText != "" {
            isFiltered = true
            filtered = usuarios.filter { item in
                return (item.name.lowercased().contains(searchText.lowercased()))
            }
        } else {
            isFiltered = false
            filtered = usuarios
        }
        view.reloadData()
    }
        
    //MARK: Navigation
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.prepare(for: segue, sender: sender)
    }
}
