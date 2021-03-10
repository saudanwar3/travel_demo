//
//  FareBreakdownModel.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 10/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit
import SwiftyJSON

class FareBreakdownModel: NSObject , NSCoding{

        var agentMarkup : Float!
        var baseFare : Float!
        var baseROE : Float!
        var currency : String!
        var otherCharges : Float!
        var passengerCount : Int!
        var passengerType : Int!
        var penaltyAmount : Float!
        var serviceFee : Float!
        var tax : Float!
        var totalFare : Float!


        /**
         * Instantiate the instance using the passed json values to set the properties values
         */
        init(fromJson json: JSON!){
            if json.isEmpty{
                return
            }
            agentMarkup = json["AgentMarkup"].floatValue
            baseFare = json["BaseFare"].floatValue
            baseROE = json["BaseROE"].floatValue
            currency = json["Currency"].stringValue
            otherCharges = json["OtherCharges"].floatValue
            passengerCount = json["PassengerCount"].intValue
            passengerType = json["PassengerType"].intValue
            penaltyAmount = json["PenaltyAmount"].floatValue
            serviceFee = json["ServiceFee"].floatValue
            tax = json["Tax"].floatValue
            totalFare = json["TotalFare"].floatValue
        }

        /**
         * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
         */
        func toDictionary() -> [String:Any]
        {
            var dictionary = [String:Any]()
            if agentMarkup != nil{
                dictionary["AgentMarkup"] = agentMarkup
            }
            if baseFare != nil{
                dictionary["BaseFare"] = baseFare
            }
            if baseROE != nil{
                dictionary["BaseROE"] = baseROE
            }
            if currency != nil{
                dictionary["Currency"] = currency
            }
            if otherCharges != nil{
                dictionary["OtherCharges"] = otherCharges
            }
            if passengerCount != nil{
                dictionary["PassengerCount"] = passengerCount
            }
            if passengerType != nil{
                dictionary["PassengerType"] = passengerType
            }
            if penaltyAmount != nil{
                dictionary["PenaltyAmount"] = penaltyAmount
            }
            if serviceFee != nil{
                dictionary["ServiceFee"] = serviceFee
            }
            if tax != nil{
                dictionary["Tax"] = tax
            }
            if totalFare != nil{
                dictionary["TotalFare"] = totalFare
            }
            return dictionary
        }

        /**
        * NSCoding required initializer.
        * Fills the data from the passed decoder
        */
        @objc required init(coder aDecoder: NSCoder)
        {
             agentMarkup = aDecoder.decodeObject(forKey: "AgentMarkup") as? Float
             baseFare = aDecoder.decodeObject(forKey: "BaseFare") as? Float
             baseROE = aDecoder.decodeObject(forKey: "BaseROE") as? Float
             currency = aDecoder.decodeObject(forKey: "Currency") as? String
             otherCharges = aDecoder.decodeObject(forKey: "OtherCharges") as? Float
             passengerCount = aDecoder.decodeObject(forKey: "PassengerCount") as? Int
             passengerType = aDecoder.decodeObject(forKey: "PassengerType") as? Int
             penaltyAmount = aDecoder.decodeObject(forKey: "PenaltyAmount") as? Float
             serviceFee = aDecoder.decodeObject(forKey: "ServiceFee") as? Float
             tax = aDecoder.decodeObject(forKey: "Tax") as? Float
             totalFare = aDecoder.decodeObject(forKey: "TotalFare") as? Float

        }

        /**
        * NSCoding required method.
        * Encodes mode properties into the decoder
        */
        func encode(with aCoder: NSCoder)
        {
            if agentMarkup != nil{
                aCoder.encode(agentMarkup, forKey: "AgentMarkup")
            }
            if baseFare != nil{
                aCoder.encode(baseFare, forKey: "BaseFare")
            }
            if baseROE != nil{
                aCoder.encode(baseROE, forKey: "BaseROE")
            }
            if currency != nil{
                aCoder.encode(currency, forKey: "Currency")
            }
            if otherCharges != nil{
                aCoder.encode(otherCharges, forKey: "OtherCharges")
            }
            if passengerCount != nil{
                aCoder.encode(passengerCount, forKey: "PassengerCount")
            }
            if passengerType != nil{
                aCoder.encode(passengerType, forKey: "PassengerType")
            }
            if penaltyAmount != nil{
                aCoder.encode(penaltyAmount, forKey: "PenaltyAmount")
            }
            if serviceFee != nil{
                aCoder.encode(serviceFee, forKey: "ServiceFee")
            }
            if tax != nil{
                aCoder.encode(tax, forKey: "Tax")
            }
            if totalFare != nil{
                aCoder.encode(totalFare, forKey: "TotalFare")
            }

        }

    }
