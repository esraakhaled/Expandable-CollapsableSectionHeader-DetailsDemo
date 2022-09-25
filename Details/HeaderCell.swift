//
//  HeaderCell.swift
//  Details
//
//  Created by Esraa Khaled   on 09/08/2022.
//

import UIKit

class HeaderCell: UITableViewCell {
    
    
    @IBOutlet weak var headerTitleLabel: UILabel!
    @IBOutlet weak var arrowImage: UIImageView!
    
    var pressed: (()->())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }


    @IBAction func expandPressed(_ sender: Any) {
        self.pressed?()

    }
}
