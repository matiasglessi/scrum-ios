//
//  SubLevelCollectionViewCell.swift
//  scrum-ios
//
//  Created by Matias Glessi on 3/22/17.
//  Copyright © 2017 Matias Glessi. All rights reserved.
//

import UIKit

class SubLevelCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var sublevelTitleLabel: UILabel!
    @IBOutlet weak var sublevelStatusLabel: UILabel!
    @IBOutlet weak var sublevelsNumberLabel: UILabel!
    @IBOutlet weak var circularProgressView: UICircularProgressRingView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
