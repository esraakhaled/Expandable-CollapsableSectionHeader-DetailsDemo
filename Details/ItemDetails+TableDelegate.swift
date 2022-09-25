//
//  ItemDetails+TableDelegate.swift
//  Details
//
//  Created by Esraa Khaled   on 09/08/2022.
//

import UIKit

extension ItemDetailsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // tableView.rowHeight = 100
        if section == 0 {
            if section1Expanded == false {
                return 0
            }else{
                return 2
            }
        }else if section == 1{
            if section2Expanded == false {
                return 0
            }else{
                return 2
            }
        }
        else if section == 2{
            if section3Expanded == false {
                return 0
            }else{
                return 1
            }
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! HeaderCell
        //header.headerTitleLabel.text = "section\(section)"
        if section == 0 {
            header.headerTitleLabel?.text = "Additions"
            
            if section1Expanded {
                header.arrowImage.image = UIImage(named: "angle-right")
            }else{
                header.arrowImage.image = UIImage(named: "angle-right-1")
            }
        }else if section == 1 {
            header.headerTitleLabel.text = "without"
            if section2Expanded {
                header.arrowImage.image = UIImage(named: "angle-right")
            }else{
                header.arrowImage.image = UIImage(named: "angle-right-1")
            }
        }
        else if section == 2 {
            header.headerTitleLabel.text = "Notes"
            if section3Expanded {
                header.arrowImage.image = UIImage(named: "angle-right")
            }else{
                header.arrowImage.image = UIImage(named: "angle-right-1")
            }
        }
        header.pressed = {
            if section == 0 {
                self.section1Expanded.toggle()
                tableView.reloadData()
            }else if section == 1 {
                self.section2Expanded.toggle()
                tableView.reloadData()
            }
            else{
                self.section3Expanded.toggle()
                tableView.reloadData()
            }
        }
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemAdditionTableViewCell", for: indexPath) as! ItemAdditionTableViewCell
            cell.additionTitle.text = additions[indexPath.row]
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemAdditionTableViewCell", for: indexPath) as! ItemAdditionTableViewCell
            cell.additionTitle.text =  additions[indexPath.row]
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "commentCell", for: indexPath) as! CommentCell
            cell.view.layer.cornerRadius = 20
            cell.view.layer.masksToBounds = true
            cell.view.layer.borderWidth = 1.0
            cell.view.layer.borderColor = UIColor(red: 226/255, green: 226/255, blue: 226/255, alpha: 1.0).cgColor
            // cell.view.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0).cgColor
            return cell
        }
        
    }
}

