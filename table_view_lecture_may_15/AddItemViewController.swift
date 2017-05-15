//
//  AddItemViewController.swift
//  table_view_lecture_may_15
//
//  Created by Andy Feng on 5/15/17.
//  Copyright © 2017 Andy Feng. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    var titleText = "ADD A NEW ITEM!!!!!"
    
    var addDel: AddDelegate?
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        titleLabel.text = titleText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleButtonPressed(_ sender: UIButton) {
        
        addDel?.add(item: myTextField.text!)
        
    }

   


}
