//
//  Airports.swift
//  QantasTechTask
//
//  Created by Clayton on 8/6/21.
//

//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

typealias Airports = [Airport]

// MARK: - WelcomeElement
class Airport: Codable {
    var airportCode: String?
    var internationalAirport: Bool?
    var domesticAirport: Bool?
    var regionalAirport: Bool?
    var onlineIndicator: Bool?
    var eticketableAirport: Bool?
    var location: Location?
    var airportName: String?
    var city: City?
    var country: Country?
    var region: Region?
    var preferredInternationalAirportCode: String?

    enum CodingKeys: String, CodingKey {
        case airportCode
        case internationalAirport
        case domesticAirport
        case regionalAirport
        case onlineIndicator
        case eticketableAirport
        case location
        case airportName
        case city
        case country
        case region
        case preferredInternationalAirportCode
    }

    init(airportCode: String?, internationalAirport: Bool?, domesticAirport: Bool?, regionalAirport: Bool?, onlineIndicator: Bool?, eticketableAirport: Bool?, location: Location?, airportName: String?, city: City?, country: Country?, region: Region?, preferredInternationalAirportCode: String?) {
        self.airportCode = airportCode
        self.internationalAirport = internationalAirport
        self.domesticAirport = domesticAirport
        self.regionalAirport = regionalAirport
        self.onlineIndicator = onlineIndicator
        self.eticketableAirport = eticketableAirport
        self.location = location
        self.airportName = airportName
        self.city = city
        self.country = country
        self.region = region
        self.preferredInternationalAirportCode = preferredInternationalAirportCode
    }
}

extension Airport  {
    
    var airportType: String? {
        get {
            if internationalAirport == true {
                return "International"
            }else if domesticAirport == true {
                return "Domestic"
            }else if regionalAirport == true {
                return "Regional"
            }else{
                return "Not specified"
            }
        }
    }
    
    var locationDisplay: String? {
        get {
            if let lat = location?.latitude, let latDir = location?.latitudeDirection, let long = location?.longitude, let longDir = location?.longitudeDirection {
                let latDisplay = String(Int(lat)) + "º " + latDir
                let longDisplay = String(Int(long)) + "º " + longDir
                return latDisplay + ", " + longDisplay
            }else{
                return "Not specified"
            }
        }
    }
    
}

// MARK: - City
class City: Codable {
    var cityCode: String?
    var cityName: String?
    var timeZoneName: String?

    enum CodingKeys: String, CodingKey {
        case cityCode
        case cityName
        case timeZoneName
    }

    init(cityCode: String?, cityName: String?, timeZoneName: String?) {
        self.cityCode = cityCode
        self.cityName = cityName
        self.timeZoneName = timeZoneName
    }
}

// MARK: - Country
class Country: Codable {
    var countryCode: String?
    var countryName: String?

    enum CodingKeys: String, CodingKey {
        case countryCode
        case countryName
    }

    init(countryCode: String?, countryName: String?) {
        self.countryCode = countryCode
        self.countryName = countryName
    }
}

// MARK: - Location
class Location: Codable {
    var aboveSeaLevel: Int?
    var latitude: Double?
    var latitudeRadius: Double?
    var longitude: Double?
    var longitudeRadius: Double?
    var latitudeDirection: String?
    var longitudeDirection: String?

    enum CodingKeys: String, CodingKey {
        case aboveSeaLevel
        case latitude
        case latitudeRadius
        case longitude
        case longitudeRadius
        case latitudeDirection
        case longitudeDirection
    }

    init(aboveSeaLevel: Int?, latitude: Double?, latitudeRadius: Double?, longitude: Double?, longitudeRadius: Double?, latitudeDirection: String?, longitudeDirection: String?) {
        self.aboveSeaLevel = aboveSeaLevel
        self.latitude = latitude
        self.latitudeRadius = latitudeRadius
        self.longitude = longitude
        self.longitudeRadius = longitudeRadius
        self.latitudeDirection = latitudeDirection
        self.longitudeDirection = longitudeDirection
    }
}
// MARK: - Region
class Region: Codable {
    var regionCode: String?
    var regionName: String?

    enum CodingKeys: String, CodingKey {
        case regionCode
        case regionName
    }

    init(regionCode: String?, regionName: String?) {
        self.regionCode = regionCode
        self.regionName = regionName
    }
}
