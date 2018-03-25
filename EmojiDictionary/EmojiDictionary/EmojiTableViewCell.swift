//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Doan Le Thieu on 3/25/18.
//  Copyright © 2018 Doan Le Thieu. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func update(with emoji: Emoji) {
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
}
