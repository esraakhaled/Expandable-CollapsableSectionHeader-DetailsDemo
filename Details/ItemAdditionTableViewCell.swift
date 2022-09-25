//
//  ItemAdditionTableViewCell.swift
//  Details
//
//  Created by Esraa Khaled   on 10/08/2022.
//

import UIKit

class ItemAdditionTableViewCell: UITableViewCell {

    @IBOutlet weak var additionTitle: UILabel!
    @IBOutlet weak var checkImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
