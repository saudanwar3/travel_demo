//
//  FareRuleModel.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 10/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit
import SwiftyJSON


class FareRuleModel: NSObject , NSCoding{

        var airline : String!
        var departureDate : String!
        var destination : String!
        var fareBasisCode : String!
        var fareRestriction : String!
        var fareRuleDetail : String!
        var flightNumber : String!
        var freeTextFareRuleDetail : String!
        var origin : String!


        /**
         * Instantiate the instance using the passed json values to set the properties values
         */
        init(fromJson json: JSON!){
            if json.isEmpty{
                return
            }
            airline = json["Airline"].stringValue
            departureDate = json["DepartureDate"].stringValue
            destination = json["Destination"].stringValue
            fareBasisCode = json["FareBasisCode"].stringValue
            fareRestriction = json["FareRestriction"].stringValue
            fareRuleDetail = json["FareRuleDetail"].stringValue
            flightNumber = json["FlightNumber"].stringValue
            freeTextFareRuleDetail = json["FreeTextFareRuleDetail"].stringValue
            origin = json["Origin"].stringValue
        }

        /**
         * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
         */
        func toDictionary() -> [String:Any]
        {
            var dictionary = [String:Any]()
            if airline != nil{
                dictionary["Airline"] = airline
            }
            if departureDate != nil{
                dictionary["DepartureDate"] = departureDate
            }
            if destination != nil{
                dictionary["Destination"] = destination
            }
            if fareBasisCode != nil{
                dictionary["FareBasisCode"] = fareBasisCode
            }
            if fareRestriction != nil{
                dictionary["FareRestriction"] = fareRestriction
            }
            if fareRuleDetail != nil{
                dictionary["FareRuleDetail"] = fareRuleDetail
            }
            if flightNumber != nil{
                dictionary["FlightNumber"] = flightNumber
            }
            if freeTextFareRuleDetail != nil{
                dictionary["FreeTextFareRuleDetail"] = freeTextFareRuleDetail
            }
            if origin != nil{
                dictionary["Origin"] = origin
            }
            return dictionary
        }

        /**
        * NSCoding required initializer.
        * Fills the data from the passed decoder
        */
        @objc required init(coder aDecoder: NSCoder)
        {
             airline = aDecoder.decodeObject(forKey: "Airline") as? String
             departureDate = aDecoder.decodeObject(forKey: "DepartureDate") as? String
             destination = aDecoder.decodeObject(forKey: "Destination") as? String
             fareBasisCode = aDecoder.decodeObject(forKey: "FareBasisCode") as? String
             fareRestriction = aDecoder.decodeObject(forKey: "FareRestriction") as? String
             fareRuleDetail = aDecoder.decodeObject(forKey: "FareRuleDetail") as? String
             flightNumber = aDecoder.decodeObject(forKey: "FlightNumber") as? String
             freeTextFareRuleDetail = aDecoder.decodeObject(forKey: "FreeTextFareRuleDetail") as? String
             origin = aDecoder.decodeObject(forKey: "Origin") as? String

        }

        /**
        * NSCoding required method.
        * Encodes mode properties into the decoder
        */
        func encode(with aCoder: NSCoder)
        {
            if airline != nil{
                aCoder.encode(airline, forKey: "Airline")
            }
            if departureDate != nil{
                aCoder.encode(departureDate, forKey: "DepartureDate")
            }
            if destination != nil{
                aCoder.encode(destination, forKey: "Destination")
            }
            if fareBasisCode != nil{
                aCoder.encode(fareBasisCode, forKey: "FareBasisCode")
            }
            if fareRestriction != nil{
                aCoder.encode(fareRestriction, forKey: "FareRestriction")
            }
            if fareRuleDetail != nil{
                aCoder.encode(fareRuleDetail, forKey: "FareRuleDetail")
            }
            if flightNumber != nil{
                aCoder.encode(flightNumber, forKey: "FlightNumber")
            }
            if freeTextFareRuleDetail != nil{
                aCoder.encode(freeTextFareRuleDetail, forKey: "FreeTextFareRuleDetail")
            }
            if origin != nil{
                aCoder.encode(origin, forKey: "Origin")
            }

        }

    }
