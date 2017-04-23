//
//  L1S1ViewController.swift
//  scrum-ios
//
//  Created by Matias Glessi on 4/22/17.
//  Copyright © 2017 Matias Glessi. All rights reserved.
//

import UIKit
import BWWalkthrough


class L1S1ViewController: UIViewController, BWWalkthroughViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        showWalkthroughs()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    


    func showWalkthroughs(){
        
        
        let stb = UIStoryboard(name: "Tutorial", bundle: nil)
        let walk = stb.instantiateViewController(withIdentifier: "walk") as! BWWalkthroughViewController
        
        
        let page1 = stb.instantiateViewController(withIdentifier: "W1E1_1") as UIViewController
        let page2 = stb.instantiateViewController(withIdentifier: "W1E1_2") as UIViewController
        let page3 = stb.instantiateViewController(withIdentifier: "W1E1_3") as UIViewController
        
        walk.delegate = self
        walk.add(viewController: page1)
        walk.add(viewController: page2)
        walk.add(viewController: page3)
        
        
        self.navigationController?.pushViewController(walk, animated: true)
            

    }
    
    func walkthroughCloseButtonPressed(){
    
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
}
