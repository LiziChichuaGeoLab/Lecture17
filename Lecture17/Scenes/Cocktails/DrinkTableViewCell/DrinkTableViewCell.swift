//
//  DrinkTableViewCell.swift
//  Lecture17
//
//  Created by LiziChichua on 24.12.22.
//

import UIKit
import Kingfisher

class DrinkTableViewCell: UITableViewCell {

    @IBOutlet private weak var drinkImageView: UIImageView!
    @IBOutlet private weak var drinkName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        drinkImageView.layer.cornerRadius = drinkImageView.layer.bounds.width / 2
    }
    
    func configure(with drink: Drink) {
        drinkImageView.kf.indicatorType = .activity
        drinkImageView.kf.setImage(with: URL(string: drink.image))
        drinkName.text = drink.name
    }
}
