//
//  TableViewCell.swift
//  CitiesTable
//
//  Created by Admin on 07/12/2019.
//  Copyright © 2019 Eugene Palagin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var rowName: UILabel!
    @IBOutlet var rowValue: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure (city: City, row: Int) {
        
        switch row {
            case 0:
                rowName.text = "Год основания:"
                rowValue.text = "\(city.foundationYear) г."
            case 1:
                rowName.text = "Площадь:"
                rowValue.text = "\(city.area) км\u{00B2}"
            case 2:
                rowName.text = "Население:"
                rowValue.text = "\(city.population) чел."
            default:
                break
        }
    }
}
