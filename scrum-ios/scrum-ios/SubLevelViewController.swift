//
//  SubLevelViewController.swift
//  scrum-ios
//
//  Created by Matias Glessi on 3/25/17.
//  Copyright © 2017 Matias Glessi. All rights reserved.
//

import UIKit

class SubLevelViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.register(UINib(nibName: "SubLevelCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SubLevelCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout: UICollectionViewLayout, sizeForItemAt sizeForItemAtIndexPath: IndexPath) -> CGSize {
        
        //let screenWidth = UIScreen.main.bounds.size.width
        return CGSize(width: 250, height: 455)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubLevelCell", for: indexPath) as! SubLevelCollectionViewCell
        
        
        cell.backView.layer.cornerRadius = 15
        cell.backView.layer.masksToBounds = true

        
        return cell
    }

    @IBAction func backButtonTapped(_ sender: Any) {
        
        
        self.navigationController?.popViewController(animated: true)

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
