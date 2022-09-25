//
//  ItemDetailsViewController.swift
//  Details
//
//  Created by Esraa Khaled   on 08/08/2022.
//

import UIKit
import Cosmos

class ItemDetailsViewController: UIViewController {

    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var tableView: UITableView!    {
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            tableView.separatorStyle = .none
        }
    }
    
    var section1Expanded = false
    var section2Expanded = false
    var section3Expanded = false
    var additions = ["Raisin","Hazelnut"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
       
    }
    func setupView(){
        orderView.layer.cornerRadius = 20
        orderView.layer.masksToBounds = true
        orderView.layer.borderWidth = 1.0
        orderView.layer.borderColor = UIColor(red: 216/255, green: 14/255, blue: 25/255, alpha: 1.0).cgColor
    }
    
}
