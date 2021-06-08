//
//  AirportCell.swift
//  QantasTechTask
//
//  Created by Clayton on 8/6/21.
//

import UIKit

class AirportCell: UITableViewCell {

    @IBOutlet weak var airportNameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.layer.masksToBounds = true
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupView(_ cell: AirportCell, _ airport: Airport?) {
        
        cell.airportNameLabel.text = airport?.airportName
        cell.countryLabel.text = airport?.country?.countryName
        
    }
    
}
