//
//  ContatosViewController.swift
//  ProjetoMVPPicpay
//
//  Created by Guilherme Prata Costa on 28/08/19.
//  Copyright © 2019 Guilherme Prata Costa. All rights reserved.
//

import UIKit
import SVProgressHUD

class ContatosViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    lazy var searchController = UISearchController(searchResultsController: nil)
    lazy var presenter: ContatosPresenter = {
        let p = ContatosPresenter(view: self, router: ContatosPresenterRouter(self))
        return p
    }()
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewDidLoad()
        configureSearch()
        tableView.delegate = self
        tableView.dataSource = self
        
        searchController.accessibilityTraits = UIAccessibilityTraits.searchField

    }
    
    private func configureSearch() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "A quem você deseja pagar?"
        searchController.searchBar.tintColor = .white
        searchController.searchBar.layer.borderColor = UIColor.white.cgColor
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationController?.hidesBarsOnSwipe = true
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
}

extension ContatosViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive {
            return presenter.filtered.count
        } else {
            return presenter.usuarios.count
        }

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: mCell, for: indexPath) as! ContatosCell
        
        presenter.configureCell(cell, for: indexPath.row)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        presenter.onDidSelectRowAt(for: indexPath.row, isActive: searchController.isActive)
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
}

extension ContatosViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        if let text = searchController.searchBar.text {
            presenter.filtered(text)
        }
    }
    
}


extension ContatosViewController: ContatosPresenterView{
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
    
    func reloadData() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    
}
