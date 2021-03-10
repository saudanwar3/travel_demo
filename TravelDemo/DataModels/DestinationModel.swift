//
//  DestinationModel.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 10/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit
import SwiftyJSON

class DestinationModel: NSObject , NSCoding{
    
        var airportCode : String!
        var airportName : String!
        var cityCode : String!
        var cityName : String!
        var countryCode : String!
        var countryName : String!
        var terminal : String!


        /**
         * Instantiate the instance using the passed json values to set the properties values
         */
        init(fromJson json: JSON!){
            if json.isEmpty{
                return
            }
            airportCode = json["AirportCode"].stringValue
            airportName = json["AirportName"].stringValue
            cityCode = json["CityCode"].stringValue
            cityName = json["CityName"].stringValue
            countryCode = json["CountryCode"].stringValue
            countryName = json["CountryName"].stringValue
            terminal = json["Terminal"].stringValue
        }

        /**
         * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
         */
        func toDictionary() -> [String:Any]
        {
            var dictionary = [String:Any]()
            if airportCode != nil{
                dictionary["AirportCode"] = airportCode
            }
            if airportName != nil{
                dictionary["AirportName"] = airportName
            }
            if cityCode != nil{
                dictionary["CityCode"] = cityCode
            }
            if cityName != nil{
                dictionary["CityName"] = cityName
            }
            if countryCode != nil{
                dictionary["CountryCode"] = countryCode
            }
            if countryName != nil{
                dictionary["CountryName"] = countryName
            }
            if terminal != nil{
                dictionary["Terminal"] = terminal
            }
            return dictionary
        }

        /**
        * NSCoding required initializer.
        * Fills the data from the passed decoder
        */
        @objc required init(coder aDecoder: NSCoder)
        {
             airportCode = aDecoder.decodeObject(forKey: "AirportCode") as? String
             airportName = aDecoder.decodeObject(forKey: "AirportName") as? String
             cityCode = aDecoder.decodeObject(forKey: "CityCode") as? String
             cityName = aDecoder.decodeObject(forKey: "CityName") as? String
             countryCode = aDecoder.decodeObject(forKey: "CountryCode") as? String
             countryName = aDecoder.decodeObject(forKey: "CountryName") as? String
             terminal = aDecoder.decodeObject(forKey: "Terminal") as? String

        }

        /**
        * NSCoding required method.
        * Encodes mode properties into the decoder
        */
        func encode(with aCoder: NSCoder)
        {
            if airportCode != nil{
                aCoder.encode(airportCode, forKey: "AirportCode")
            }
            if airportName != nil{
                aCoder.encode(airportName, forKey: "AirportName")
            }
            if cityCode != nil{
                aCoder.encode(cityCode, forKey: "CityCode")
            }
            if cityName != nil{
                aCoder.encode(cityName, forKey: "CityName")
            }
            if countryCode != nil{
                aCoder.encode(countryCode, forKey: "CountryCode")
            }
            if countryName != nil{
                aCoder.encode(countryName, forKey: "CountryName")
            }
            if terminal != nil{
                aCoder.encode(terminal, forKey: "Terminal")
            }

        }

    }
