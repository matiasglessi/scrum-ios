//
//  LevelsViewController.swift
//  scrum-ios
//
//  Created by Matias Glessi on 3/14/17.
//  Copyright © 2017 Matias Glessi. All rights reserved.
//

import UIKit

class LevelsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let registerStoryboard = UIStoryboard.init(name: "Register", bundle: nil)
        let registerVC = registerStoryboard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController

        
        self.tabBarController?.present(registerVC, animated: true, completion: {

        })
       // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
