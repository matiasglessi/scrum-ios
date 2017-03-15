//
//  ViewController.swift
//  scrum-ios
//
//  Created by Matias Glessi on 2/7/17.
//  Copyright © 2017 Matias Glessi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        let messagesStoryboard = UIStoryboard.init(name: "Register", bundle: nil)
        let messagesVC = messagesStoryboard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController

        
        self.navigationController?.pushViewController(messagesVC, animated: true)
    }

}

