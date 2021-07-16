//
//  ViewController.swift
//  TodoList
//
//  Created by Hamed Amiry on 16.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "this is todo list thanks"
        label.backgroundColor = .gray
        
        // Do any additional setup after loading the view.
    }


}

