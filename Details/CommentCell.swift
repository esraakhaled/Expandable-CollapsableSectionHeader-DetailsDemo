//
//  CommentCell.swift
//  Details
//
//  Created by Esraa Khaled   on 10/08/2022.
//

import UIKit

class CommentCell: UITableViewCell {

    @IBOutlet weak var commentView: UITextView!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
