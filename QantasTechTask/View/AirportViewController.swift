//
//  AirportViewController.swift
//  QantasTechTask
//
//  Created by Clayton on 8/6/21.
//

import UIKit

class AirportViewController: UIViewController {

    @IBOutlet weak var airportCodeLabel: UILabel!
    @IBOutlet weak var airportNameLabel: UILabel!
    @IBOutlet weak var airportTypeLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var timezoneLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    var airport: Airport!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        airportCodeLabel.text = airport.airportCodeDisplay
        airportNameLabel.text = airport.airportName
        airportTypeLabel.text = airport.airportType
        cityLabel.text = airport.city?.cityName
        countryLabel.text = airport.country?.countryName
        timezoneLabel.text = airport.city?.timeZoneName
        locationLabel.text = airport.locationDisplay
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

