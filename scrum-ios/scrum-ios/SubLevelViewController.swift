//
//  SubLevelViewController.swift
//  scrum-ios
//
//  Created by Matias Glessi on 3/25/17.
//  Copyright © 2017 Matias Glessi. All rights reserved.
//

import UIKit
import UPCarouselFlowLayout

class SubLevelViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var cellSize: CGSize = CGSize.init()


    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.register(UINib(nibName: "SubLevelCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SubLevelCell")
        
        setCellSize()
        
        let layout = UPCarouselFlowLayout()
        /*
        let scaledHeight = collectionView.frame.height
        let scaledWidth = UIScreen.main.bounds.size.width * (455/UIScreen.main.bounds.size.height)
         */

        layout.itemSize = CGSize(width: 350, height: 350)
        
        layout.scrollDirection = UICollectionViewScrollDirection.horizontal
        collectionView.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setCellSize()
    {
        let scaledWidth = UIScreen.main.bounds.size.width * (455/UIScreen.main.bounds.size.height)
        self.cellSize = CGSize(width: scaledWidth, height: 455)
    }
    

    // MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout: UICollectionViewLayout, sizeForItemAt sizeForItemAtIndexPath: IndexPath) -> CGSize {
        
        return cellSize;
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let level = 1
        
        switch level {
        case 1:
            chooseOnboardForLevel1(index: indexPath)
        case 2:
            chooseOnboardForLevel1(index: indexPath)
        case 3:
            chooseOnboardForLevel1(index: indexPath)
        case 4:
            chooseOnboardForLevel1(index: indexPath)
        case 5:
            chooseOnboardForLevel1(index: indexPath)
        case 6:
            chooseOnboardForLevel1(index: indexPath)
        case 7:
            chooseOnboardForLevel1(index: indexPath)
            
        default:
            break
        }
        
        
        
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

    func chooseOnboardForLevel1(index: IndexPath){
        
        let sublevel = index.row + 1
        
        switch sublevel {
        
        case 1:
            let levelStoryboard = UIStoryboard.init(name: "Level1", bundle: nil)
            let sublevelViewController = levelStoryboard.instantiateViewController(withIdentifier: "L1S1") as! L1S1ViewController
            self.navigationController?.pushViewController(sublevelViewController, animated: true)

        default:
            break
        }
    }
    

}
