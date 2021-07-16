//
//  ViewController.swift
//  TodoList
//
//  Created by Hamed Amiry on 16.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UINib(nibName: CellIdentifire.toDoTableViewCell, bundle: nil), forCellReuseIdentifier: CellIdentifire.toDoTableViewCell)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .systemGray5
        view.addSubview(tableView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}


extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifire.toDoTableViewCell, for: indexPath) as! ToDoTableViewCell
        cell.todoLabel.text = "hi hi hi "
    
        
        return cell
    }
    
    
}
