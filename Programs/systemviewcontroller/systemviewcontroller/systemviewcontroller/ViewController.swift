//
//  ViewController.swift
//  systemviewcontroller
//
//  Created by Sai Rohit on 11/01/24.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ShareButtonTapped(_ sender: UIButton) {
        
        guard let image = ImageView.image else {
            return
        }
        
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        activityController.popoverPresentationController?.sourceView = sender
        
        present(activityController, animated: true, completion: nil)
        
    }
    
    
    @IBAction func SafariTapped(_ sender: UIButton) {
        if let url = URL(string: "https://apple.com") {
            let safariViewController = SFSafariViewController(url: url)
            
            present(safariViewController, animated: true, completion: nil)
        }
    }
    

}

