//
//  PastPixyncListViewController.swift
//  Pixync
//
//  Created by Sebastien Arbogast on 26/03/2015.
//  Copyright (c) 2015 Epseelon sprl. All rights reserved.
//

import UIKit

class ArmorListViewController: PFQueryTableViewController {
    
    override init(style: UITableViewStyle, className: String!) {
        super.init(style: style, className: className)
        
        self.textKey = "displayName"
        self.pullToRefreshEnabled = true
        self.paginationEnabled = true
        self.objectsPerPage = 20
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.parseClassName = "Armor"
        self.textKey = "displayName"
        self.pullToRefreshEnabled = true
        self.paginationEnabled = true
        self.objectsPerPage = 20
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.loadObjects()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func queryForTable() -> PFQuery {
        var query:PFQuery = PFQuery(className: "Armor")
        return query
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath, object: PFObject?) -> PFTableViewCell? {
        let armor:Armor = object as! Armor
        let cell = super.tableView(tableView, cellForRowAtIndexPath: indexPath, object: object)
        cell!.textLabel?.text = armor.displayName
        
        return cell
    }
    
    // MARK: - Navigation
}
