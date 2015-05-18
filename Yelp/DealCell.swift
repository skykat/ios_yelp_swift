//
//  DealCell.swift
//  Yelp
//
//  Created by Karen Levy on 5/17/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol DealSwitchCellDelegate{
    optional func dealSwitchCell(dealCell: DealCell, didChangeValue value: Bool)
}

class DealCell: UITableViewCell {

    @IBOutlet weak var dealOnSwitch: UISwitch!
    @IBOutlet weak var dealLabel: UILabel!
    weak var dealDelegate: DealSwitchCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dealOnSwitch.addTarget(self, action: "dealSwitchValueChanged", forControlEvents: UIControlEvents.ValueChanged)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func dealSwitchValueChanged(){
        dealDelegate?.dealSwitchCell?(self, didChangeValue: dealOnSwitch.on)
    }
}
