//
//  TableViewCell.swift
//  Photosum
//
//  Created by Ripon sk on 08/06/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var authorlbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
