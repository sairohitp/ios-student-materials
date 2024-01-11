//
//  Page.swift
//  viewlifecycle
//
//  Created by Sai Rohit on 08/01/24.
//

import UIKit

class Page: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondViewController – View DidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("SecondViewController – View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("SecondViewController – View Will Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("SecondViewController – View Will didDisappear")
    }

}
