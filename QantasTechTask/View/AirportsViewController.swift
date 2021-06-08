//
//  AirportsViewController.swift
//  QantasTechTask
//
//  Created by Clayton on 8/6/21.
//

import UIKit

class AirportsViewController: UIViewController{

    @IBOutlet var airportsTableView: UITableView!
    
    private var airports: Airports?
    private var httpClient = HTTPClient()
    private var activityView = UIActivityIndicatorView(style: .large)
    
    private let airportCell = "AirportCell"
    private let airportSegue = "AirportSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        airportsTableView.delegate = self
        airportsTableView.dataSource = self
        
        airportsTableView.register(UINib(nibName: airportCell, bundle: nil), forCellReuseIdentifier: airportCell)
        airportsTableView.tableFooterView = UIView()
        
        getAirports()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AirportViewController {
            let senderAirport = sender as? Airport
            destination.airport = senderAirport
        }
    }
    
    
    func getAirports(){
        
        activityView.center = self.view.center
        self.view.addSubview(activityView)
        activityView.startAnimating()
        
        httpClient.getAirports( completion:  { result in
            switch result {
            case .success(let details):
                DispatchQueue.main.async {
                    self.airports = details
                    self.airportsTableView.reloadData()
                    self.activityView.stopAnimating()
                }
            case .failure(let error):
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.activityView.stopAnimating()
                }
            }
        })
    }
    
}

extension AirportsViewController : UITableViewDelegate,  UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return airports?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let airport = airports?[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: airportCell, for: indexPath) as! AirportCell
        cell.setupView(cell, airport)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let airport = airports?[indexPath.row]
        
        performSegue(withIdentifier: airportSegue, sender: airport)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 50
    }
    
}
