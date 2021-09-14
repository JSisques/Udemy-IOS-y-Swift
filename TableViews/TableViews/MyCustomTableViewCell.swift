//
//  MyCustomTableViewCell.swift
//  TableViews
//
//  Created by Javier Plaza Sisqués on 14/9/21.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Codigo que se ejecutara a la hora de crear una celda
        myLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myLabel.textColor = .blue
        
        backgroundColor = .gray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Codigo que se ejecutara cuando la celda este selecionada
        
        print(myLabel.text ?? "")
    }
    
}
