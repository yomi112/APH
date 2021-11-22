//
//  ViewController.swift
//  APH
//
//  Created by robotyomi on 22.11.2021.
//

import UIKit

class ViewController: UITableViewController {
    let phone = [
        Phone(name: "Iphone 4", model: 4, color: "Black", memory: 4, DisplaySize: 4, GWave: 3, ChipModel: 3),
        Phone(name: "Iphone 5", model: 5, color: "Black", memory: 16, DisplaySize: 5, GWave: 4, ChipModel: 5),
        Phone(name: "Iphone 6", model: 6, color: "Gold", memory: 32, DisplaySize: 5, GWave: 4, ChipModel: 6)
    ]
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phone.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "PhoneCell", for: indexPath)
        cell.textLabel?.text = phone[indexPath.row].name
        return cell
    }
}

