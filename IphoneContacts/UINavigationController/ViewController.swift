//
//  ViewController.swift
//  UINavigationController
//
//  Created by emre usul on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {

    let searchController = UISearchController()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavigationBar()
      
        view.backgroundColor = .black
    }
    
    private func setupNavigationBar() {
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Kişiler"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(buttonClicked))
        
        searchController.searchBar.placeholder = "Ara"
        navigationItem.searchController = searchController
        

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Düzenle", style: .done, target: self, action: #selector(buttonClicked))
        
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.backgroundColor = .black//UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
   
        
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
    
        navigationController?.navigationBar.tintColor = .systemBlue
      
    }
    
  

    @objc func buttonClicked() {
      
    }
}


