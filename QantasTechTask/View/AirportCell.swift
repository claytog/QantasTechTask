//
//  AirportCell.swift
//  QantasTechTask
//
//  Created by Clayton on 8/6/21.
//

import UIKit

class AirportCell: UITableViewCell {

    @IBOutlet weak var airportCodeLabel: UILabel!
    @IBOutlet weak var airportNameLabel: UILabel!
    @IBOutlet weak var airportTypeLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var timezoneLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
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
        
        cell.airportCodeLabel.text = airport?.airportCode
        cell.airportNameLabel.text = airport?.airportName
        cell.airportTypeLabel.text = airport?.airportType
        cell.cityLabel.text = airport?.city?.cityName
        cell.countryLabel.text = airport?.country?.countryName
        cell.timezoneLabel.text = airport?.city?.timeZoneName
        cell.locationLabel.text = airport?.locationDisplay
        
    }
    
}
