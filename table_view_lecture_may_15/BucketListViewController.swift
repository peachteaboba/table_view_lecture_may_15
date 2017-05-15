//
//  BucketListViewController.swift
//  table_view_lecture_may_15
//
//  Created by Andy Feng on 5/15/17.
//  Copyright © 2017 Andy Feng. All rights reserved.
//

import UIKit

class BucketListTableViewController: UITableViewController, AddDelegate {

    var myList = ["algos", "lecture", "lunch", "work"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    // MARK: Table View Protocol Functions =============
    
    // How many rows are there in your table view?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myList.count
    }
    
    // What does each TV cell look like?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = myList[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "add", sender: indexPath.row)
        
    }
    
    
    
    
    // MARK: Segue Methods =============
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        

        
        let vc = segue.destination as! AddItemViewController
        
        print(sender ?? "nil")
        
        vc.addDel = self
        
        if sender is Int {
            if let s = sender as? Int {
                vc.titleText = myList[s]
            }
        } else {
            vc.titleText = "Passing data from BLVC!!"
        }
        
        
        
    }
    
    
    func add(item: String) {
        self.navigationController?.popViewController(animated: true)
        myList.append(item)
        tableView.reloadData()
    }
    
    
    
    
    
    

}

