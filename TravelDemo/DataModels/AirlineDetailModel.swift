//
//  AirlineDetailModel.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 10/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit
import SwiftyJSON

class AirlineDetailModel: NSObject , NSCoding{

        var airlineCode : String!
        var airlineName : String!
        var allianceInfo : String!
        var craft : String!
        var flightNumber : String!
        var operatingCarrier : String!


        /**
         * Instantiate the instance using the passed json values to set the properties values
         */
        init(fromJson json: JSON!){
            if json.isEmpty{
                return
            }
            airlineCode = json["AirlineCode"].stringValue
            airlineName = json["AirlineName"].stringValue
            allianceInfo = json["AllianceInfo"].stringValue
            craft = json["Craft"].stringValue
            flightNumber = json["FlightNumber"].stringValue
            operatingCarrier = json["OperatingCarrier"].stringValue
        }

        /**
         * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
         */
        func toDictionary() -> [String:Any]
        {
            var dictionary = [String:Any]()
            if airlineCode != nil{
                dictionary["AirlineCode"] = airlineCode
            }
            if airlineName != nil{
                dictionary["AirlineName"] = airlineName
            }
            if allianceInfo != nil{
                dictionary["AllianceInfo"] = allianceInfo
            }
            if craft != nil{
                dictionary["Craft"] = craft
            }
            if flightNumber != nil{
                dictionary["FlightNumber"] = flightNumber
            }
            if operatingCarrier != nil{
                dictionary["OperatingCarrier"] = operatingCarrier
            }
            return dictionary
        }

        /**
        * NSCoding required initializer.
        * Fills the data from the passed decoder
        */
        @objc required init(coder aDecoder: NSCoder)
        {
             airlineCode = aDecoder.decodeObject(forKey: "AirlineCode") as? String
             airlineName = aDecoder.decodeObject(forKey: "AirlineName") as? String
             allianceInfo = aDecoder.decodeObject(forKey: "AllianceInfo") as? String
             craft = aDecoder.decodeObject(forKey: "Craft") as? String
             flightNumber = aDecoder.decodeObject(forKey: "FlightNumber") as? String
             operatingCarrier = aDecoder.decodeObject(forKey: "OperatingCarrier") as? String

    
            
        }

        /**
        * NSCoding required method.
        * Encodes mode properties into the decoder
        */
        func encode(with aCoder: NSCoder)
        {
            if airlineCode != nil{
                aCoder.encode(airlineCode, forKey: "AirlineCode")
            }
            if airlineName != nil{
                aCoder.encode(airlineName, forKey: "AirlineName")
            }
            if allianceInfo != nil{
                aCoder.encode(allianceInfo, forKey: "AllianceInfo")
            }
            if craft != nil{
                aCoder.encode(craft, forKey: "Craft")
            }
            if flightNumber != nil{
                aCoder.encode(flightNumber, forKey: "FlightNumber")
            }
            if operatingCarrier != nil{
                aCoder.encode(operatingCarrier, forKey: "OperatingCarrier")
            }

        }
}
    
