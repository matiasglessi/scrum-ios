//
//  LevelsViewController.swift
//  scrum-ios
//
//  Created by Matias Glessi on 3/14/17.
//  Copyright © 2017 Matias Glessi. All rights reserved.
//

import UIKit

class LevelsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var levelColors: [UIColor] = [UIColor(red:1.00, green:0.65, blue:0.10, alpha:1.0), UIColor(red:0.37, green:0.55, blue:0.38, alpha:1.0), UIColor(red:0.94, green:0.44, blue:0.42, alpha:1.0), UIColor(red:0.62, green:0.68, blue:0.78, alpha:1.0), UIColor(red:0.09, green:0.47, blue:0.58, alpha:1.0), UIColor(red:0.56, green:0.18, blue:0.34, alpha:1.0), UIColor(red:0.47, green:0.71, blue:0.45, alpha:1.0)]
    
    var cellSize: CGSize = CGSize.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.register(UINib(nibName: "BigLevelCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BigLevel")
        
        self.setCellSize()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    func setCellSize(){
        let screenWidth = UIScreen.main.bounds.size.width
        cellSize = CGSize(width: screenWidth, height: 160)
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout: UICollectionViewLayout, sizeForItemAt sizeForItemAtIndexPath: IndexPath) -> CGSize {
        
        
        return cellSize;
        

    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let sublevelStoryboard = UIStoryboard.init(name: "SubLevel", bundle: nil)
        let sublevelViewController = sublevelStoryboard.instantiateViewController(withIdentifier: "SubLevelViewController") as! SubLevelViewController
        
        sublevelViewController.view.backgroundColor  = levelColors[indexPath.row]
        
        self.navigationController?.pushViewController(sublevelViewController, animated: true)

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BigLevel", for: indexPath) as! BigLevelCollectionViewCell
        
        cell.levelNumber.text = "\(indexPath.row + 1)"
        cell.backgroundColor = levelColors[indexPath.row]
        
        if (indexPath.row == 0){
            cell.lockedView.isHidden = true
        }
        else{
            cell.lockedView.isHidden = false
        }
        
        return cell
    }
}
