//
//  FareModel.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 10/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit
import SwiftyJSON

class FareModel: NSObject , NSCoding{

        var agentMarkup : Float!
        var agentPreferredCurrency : String!
        var baseFare : Float!
        var fareType : String!
        var otherCharges : Float!
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
            agentPreferredCurrency = json["AgentPreferredCurrency"].stringValue
            baseFare = json["BaseFare"].floatValue
            fareType = json["FareType"].stringValue
            otherCharges = json["OtherCharges"].floatValue
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
            if agentPreferredCurrency != nil{
                dictionary["AgentPreferredCurrency"] = agentPreferredCurrency
            }
            if baseFare != nil{
                dictionary["BaseFare"] = baseFare
            }
            if fareType != nil{
                dictionary["FareType"] = fareType
            }
            if otherCharges != nil{
                dictionary["OtherCharges"] = otherCharges
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
             agentPreferredCurrency = aDecoder.decodeObject(forKey: "AgentPreferredCurrency") as? String
             baseFare = aDecoder.decodeObject(forKey: "BaseFare") as? Float
             fareType = aDecoder.decodeObject(forKey: "FareType") as? String
             otherCharges = aDecoder.decodeObject(forKey: "OtherCharges") as? Float
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
            if agentPreferredCurrency != nil{
                aCoder.encode(agentPreferredCurrency, forKey: "AgentPreferredCurrency")
            }
            if baseFare != nil{
                aCoder.encode(baseFare, forKey: "BaseFare")
            }
            if fareType != nil{
                aCoder.encode(fareType, forKey: "FareType")
            }
            if otherCharges != nil{
                aCoder.encode(otherCharges, forKey: "OtherCharges")
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
