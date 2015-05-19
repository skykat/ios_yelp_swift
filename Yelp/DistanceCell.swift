//
//  DistanceCell.swift
//  Yelp
//
//  Created by Karen Levy on 5/18/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol DistanceCellDelegate{
    optional func distanceCell(distanceCell: DistanceCell, didChangeValue value: Bool)
}

class DistanceCell: UITableViewCell {
    
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var distanceSwitch: UISwitch!
    weak var distanceDelegate: DistanceCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func distanceSwitchValueChanged(){
        distanceDelegate?.distanceCell?(self, didChangeValue: distanceSwitch.on)
    }
}
