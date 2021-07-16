//
//  ToDoTableViewCell.swift
//  TodoList
//
//  Created by Hamed Amiry on 16.07.2021.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    @IBOutlet weak var todoLabel: UILabel!
    {
        didSet {
            //todoLabel.textColor = .blue
            todoLabel.font = .systemFont(ofSize: 30, weight: .bold)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        corner()


        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    private func corner() {
        todoLabel.layer.cornerRadius = 8
        todoLabel.layer.masksToBounds = true
    }
    


    
}
