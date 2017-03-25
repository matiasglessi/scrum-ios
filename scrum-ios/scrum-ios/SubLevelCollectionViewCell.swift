//
//  SubLevelCollectionViewCell.swift
//  scrum-ios
//
//  Created by Matias Glessi on 3/22/17.
//  Copyright © 2017 Matias Glessi. All rights reserved.
//

import UIKit
import MBCircularProgressBar

class SubLevelCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var sublevelTitleLabel: UILabel!
    @IBOutlet weak var sublevelStatusLabel: UILabel!

    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var circularProgressView: MBCircularProgressBarView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
