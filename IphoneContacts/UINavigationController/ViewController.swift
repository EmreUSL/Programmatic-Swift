//
//  ViewController.swift
//  UINavigationController
//
//  Created by emre usul on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {

    var searchController = UISearchController()
    var tableView = UITableView()
   
    let names = [ "Mark Gray" , "Hans Izabel" , "Marki Vladimir"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavigationBar()
        setupTableView()
        setupTableHeaderView()
        
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
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.backgroundColor = .black
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
                    tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                    tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                    tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                    tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
                ])
    }
    
  

    @objc func buttonClicked() {
      
    }
    
    private func setupTableHeaderView() {
        
        let header = TableHeaderView(frame: .zero)
        
        var size = header.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        size.width = UIScreen.main.bounds.width
        header.frame.size = size
        
        tableView.tableHeaderView = header
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .black
        cell.textLabel?.text = names[indexPath.row]
        cell.textLabel?.textColor = .white
    
        
        let bgColor = UIView()
        bgColor.backgroundColor = UIColor.darkGray
        cell.selectedBackgroundView = bgColor
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
