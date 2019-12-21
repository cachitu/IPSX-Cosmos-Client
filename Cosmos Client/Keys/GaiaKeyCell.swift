//
//  GaiaKeyCell.swift
//  Cosmos Client
//
//  Created by Calin Chitu on 13/01/2019.
//  Copyright © 2019 Calin Chitu. All rights reserved.
//

import UIKit
import CosmosRestApi

class GaiaKeyCell: UITableViewCell {

    @IBOutlet weak var leftLabel: UILabel?
    @IBOutlet weak var leftSubLabel: UILabel?
    @IBOutlet weak var upRightLabel: UILabel?
    @IBOutlet weak var leftImageView: UIImageView?
    
    @IBAction func copyAction(_ sender: Any) {
        UIPasteboard.general.string = leftSubLabel?.text
        onCopy?()
    }
    
    var onCopy:(() -> ())?
    
    func configure(key: GaiaKey, amount: String = "", image: UIImage?) {
        upRightLabel?.text = amount
        leftLabel?.text = key.name
        leftSubLabel?.text = key.address
        leftImageView?.image = image
    }
}
