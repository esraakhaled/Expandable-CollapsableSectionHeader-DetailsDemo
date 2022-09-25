//
//  RoundedCornerView.swift
//  Details
//
//  Created by Esraa Khaled   on 11/08/2022.
//

import UIKit

class RoundedCornerView: UIView {

    // if cornerRadius variable is set/changed, change the corner radius of the UIView
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
}
