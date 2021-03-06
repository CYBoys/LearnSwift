//
//  ViewController.swift
//  Project 21 - HeaderTableView
//
//  Created by 陈炯 on 16/6/6.
//  Copyright © 2016年 Jiong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var ferrari = ["LaFerrari", "Enzo", "F50", "F40", "F12 TDF"]
    var lamborghini = ["Aventador", "Huracan", "Veneno", "Murcielago", "Reventon"]
    var astonMartin = ["One-77", "Vulcan", "Vanquish", "Vantage", "DB11"]
    var porsche = ["918 Spyder", "911 GT3", "Carrera GT", "Panamera", "Cayenne"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 20.0
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        switch (indexPath.section) {
        case 0: cell.textLabel?.text = ferrari[indexPath.row]
        case 1: cell.textLabel?.text = lamborghini[indexPath.row]
        case 2: cell.textLabel?.text = astonMartin[indexPath.row]
        case 3: cell.textLabel?.text = porsche[indexPath.row]
        default: cell.textLabel?.text = ""
        }
        return cell
    }
    
    //MARK: Header
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell1 = tableView.dequeueReusableCellWithIdentifier("headerCell") as! HeaderCell
        headerCell1.backgroundColor = UIColor.grayColor()
        
        switch (section) {
        case 0: headerCell1.headerLabel.text = " Ferrari"
        case 1: headerCell1.headerLabel.text = " Lamborghini"
        case 2: headerCell1.headerLabel.text = " Aston Martin"
        case 3: headerCell1.headerLabel.text = " Porsche"
        default: headerCell1.headerLabel.text = ""
        }
        return headerCell1
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25.0
    }
}










