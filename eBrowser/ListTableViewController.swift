//
//  ListTableViewController.swift
//  eBrowser
//
//  Created by Milos Jovanovic on 20/11/2019.
//  Copyright © 2019 Milos Jovanovic. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var urlLinks = ["apple.com", "youtube.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "EBrowser"
        navigationController?.navigationBar.prefersLargeTitles = true

    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return urlLinks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Url", for: indexPath)
        cell.textLabel?.text = urlLinks[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "browser") as? ViewController {
            vc.websites = [urlLinks[indexPath.row]]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}
