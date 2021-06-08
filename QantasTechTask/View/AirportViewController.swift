//
//  AirportViewController.swift
//  QantasTechTask
//
//  Created by Clayton on 8/6/21.
//

import UIKit

class AirportViewController: UIViewController {

    @IBOutlet var airportCodeLabel: UILabel!
    
    var airport: Airport!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        airportCodeLabel.text = airport.airportCode
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

