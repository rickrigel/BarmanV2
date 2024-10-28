//
//  ItemCell.swift
//  BarmanV2
//
//  Created by RICARDO SANCHEZ on 20/10/24.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet weak var cocktailName: UILabel!
    @IBOutlet weak var cocktailImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
