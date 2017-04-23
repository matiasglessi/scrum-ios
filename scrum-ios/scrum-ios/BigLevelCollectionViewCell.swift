//
//  BigLevelCollectionViewCell.swift
//  scrum-ios
//
//  Created by Matias Glessi on 3/22/17.
//  Copyright © 2017 Matias Glessi. All rights reserved.
//

import UIKit

class BigLevelCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var levelTitleLabel: UILabel!
    
    @IBOutlet weak var percentageLabel: UILabel!
    
    @IBOutlet weak var subLevelsNumberLabel: UILabel!

    @IBOutlet weak var lockedView: UIView!
    
    @IBOutlet weak var levelNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
