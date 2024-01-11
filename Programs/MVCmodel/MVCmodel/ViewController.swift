//
//  ViewController.swift
//  MVCmodel
//
//  Created by Sai Rohit on 09/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Age: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person1 = User()
        person1.name = "Rahul"
        person1.age = 21
        
        Name.text = person1.name!
        Age.text = "\(person1.age!)"
    }


}

