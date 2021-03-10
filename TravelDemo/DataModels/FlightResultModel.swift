//
//  FlightResultModel.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 10/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit
import SwiftyJSON
class FlightResultModel: NSObject , NSCoding{

        var airlineRemark : String!
        var destination : String!
        var fare : FareModel!
        var fareBreakdown : [FareBreakdownModel]!
        var fareRules : [FareRuleModel]!
        var isLcc : Bool!
        var isRefundAllowed : Bool!
        var isReissueAllowed : Bool!
        var isVoidAllowed : Bool!
        var journeyType : Int!
        var lastTicketDate : String!
        var nonRefundable : Bool!
        var origin : String!
        var providerRemarks : String!
        var responseTime : String!
        var resultId : String!
        var segments : [SegmentModel]!
        var ticketAdvisory : String!
        var tripIndicator : Int!
        var validatingAirline : String!


        /**
         * Instantiate the instance using the passed json values to set the properties values
         */
        init(fromJson json: JSON!){
            if json.isEmpty{
                return
            }
            airlineRemark = json["AirlineRemark"].stringValue
            destination = json["Destination"].stringValue
            let fareJson = json["Fare"]
            if !fareJson.isEmpty{
                fare = FareModel(fromJson: fareJson)
            }
            fareBreakdown = [FareBreakdownModel]()
            let fareBreakdownArray = json["FareBreakdown"].arrayValue
            for fareBreakdownJson in fareBreakdownArray{
                let value = FareBreakdownModel(fromJson: fareBreakdownJson)
                fareBreakdown.append(value)
            }
            fareRules = [FareRuleModel]()
            let fareRulesArray = json["FareRules"].arrayValue
            for fareRulesJson in fareRulesArray{
                let value = FareRuleModel(fromJson: fareRulesJson)
                fareRules.append(value)
            }
            isLcc = json["IsLcc"].boolValue
            isRefundAllowed = json["IsRefundAllowed"].boolValue
            isReissueAllowed = json["IsReissueAllowed"].boolValue
            isVoidAllowed = json["IsVoidAllowed"].boolValue
            journeyType = json["JourneyType"].intValue
            lastTicketDate = json["LastTicketDate"].stringValue
            nonRefundable = json["NonRefundable"].boolValue
            origin = json["Origin"].stringValue
            providerRemarks = json["ProviderRemarks"].stringValue
            responseTime = json["ResponseTime"].stringValue
            resultId = json["ResultId"].stringValue
            segments = [SegmentModel]()
            let segmentsArray = json["Segments"].arrayValue
            for segmentsJson in segmentsArray{
                let value = SegmentModel(fromJson: segmentsJson)
                segments.append(value)
            }
            ticketAdvisory = json["TicketAdvisory"].stringValue
            tripIndicator = json["TripIndicator"].intValue
            validatingAirline = json["ValidatingAirline"].stringValue
        }

        /**
         * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
         */
        func toDictionary() -> [String:Any]
        {
            var dictionary = [String:Any]()
            if airlineRemark != nil{
                dictionary["AirlineRemark"] = airlineRemark
            }
            if destination != nil{
                dictionary["Destination"] = destination
            }
            if fare != nil{
                dictionary["Fare"] = fare.toDictionary()
            }
            if fareBreakdown != nil{
                var dictionaryElements = [[String:Any]]()
                for fareBreakdownElement in fareBreakdown {
                    dictionaryElements.append(fareBreakdownElement.toDictionary())
                }
                dictionary["FareBreakdown"] = dictionaryElements
            }
            if fareRules != nil{
                var dictionaryElements = [[String:Any]]()
                for fareRulesElement in fareRules {
                    dictionaryElements.append(fareRulesElement.toDictionary())
                }
                dictionary["FareRules"] = dictionaryElements
            }
            if isLcc != nil{
                dictionary["IsLcc"] = isLcc
            }
            if isRefundAllowed != nil{
                dictionary["IsRefundAllowed"] = isRefundAllowed
            }
            if isReissueAllowed != nil{
                dictionary["IsReissueAllowed"] = isReissueAllowed
            }
            if isVoidAllowed != nil{
                dictionary["IsVoidAllowed"] = isVoidAllowed
            }
            if journeyType != nil{
                dictionary["JourneyType"] = journeyType
            }
            if lastTicketDate != nil{
                dictionary["LastTicketDate"] = lastTicketDate
            }
            if nonRefundable != nil{
                dictionary["NonRefundable"] = nonRefundable
            }
            if origin != nil{
                dictionary["Origin"] = origin
            }
            if providerRemarks != nil{
                dictionary["ProviderRemarks"] = providerRemarks
            }
            if responseTime != nil{
                dictionary["ResponseTime"] = responseTime
            }
            if resultId != nil{
                dictionary["ResultId"] = resultId
            }
            if segments != nil{
                var dictionaryElements = [[String:Any]]()
                for segmentsElement in segments {
                    dictionaryElements.append(segmentsElement.toDictionary())
                }
                dictionary["Segments"] = dictionaryElements
            }
            if ticketAdvisory != nil{
                dictionary["TicketAdvisory"] = ticketAdvisory
            }
            if tripIndicator != nil{
                dictionary["TripIndicator"] = tripIndicator
            }
            if validatingAirline != nil{
                dictionary["ValidatingAirline"] = validatingAirline
            }
            return dictionary
        }

        /**
        * NSCoding required initializer.
        * Fills the data from the passed decoder
        */
        @objc required init(coder aDecoder: NSCoder)
        {
             airlineRemark = aDecoder.decodeObject(forKey: "AirlineRemark") as? String
             destination = aDecoder.decodeObject(forKey: "Destination") as? String
             fare = aDecoder.decodeObject(forKey: "Fare") as? FareModel
             fareBreakdown = aDecoder.decodeObject(forKey: "FareBreakdown") as? [FareBreakdownModel]
             fareRules = aDecoder.decodeObject(forKey: "FareRules") as? [FareRuleModel]
             isLcc = aDecoder.decodeObject(forKey: "IsLcc") as? Bool
             isRefundAllowed = aDecoder.decodeObject(forKey: "IsRefundAllowed") as? Bool
             isReissueAllowed = aDecoder.decodeObject(forKey: "IsReissueAllowed") as? Bool
             isVoidAllowed = aDecoder.decodeObject(forKey: "IsVoidAllowed") as? Bool
             journeyType = aDecoder.decodeObject(forKey: "JourneyType") as? Int
             lastTicketDate = aDecoder.decodeObject(forKey: "LastTicketDate") as? String
             nonRefundable = aDecoder.decodeObject(forKey: "NonRefundable") as? Bool
             origin = aDecoder.decodeObject(forKey: "Origin") as? String
             providerRemarks = aDecoder.decodeObject(forKey: "ProviderRemarks") as? String
             responseTime = aDecoder.decodeObject(forKey: "ResponseTime") as? String
             resultId = aDecoder.decodeObject(forKey: "ResultId") as? String
             segments = aDecoder.decodeObject(forKey: "Segments") as? [SegmentModel]
             ticketAdvisory = aDecoder.decodeObject(forKey: "TicketAdvisory") as? String
             tripIndicator = aDecoder.decodeObject(forKey: "TripIndicator") as? Int
             validatingAirline = aDecoder.decodeObject(forKey: "ValidatingAirline") as? String

        }

        /**
        * NSCoding required method.
        * Encodes mode properties into the decoder
        */
        func encode(with aCoder: NSCoder)
        {
            if airlineRemark != nil{
                aCoder.encode(airlineRemark, forKey: "AirlineRemark")
            }
            if destination != nil{
                aCoder.encode(destination, forKey: "Destination")
            }
            if fare != nil{
                aCoder.encode(fare, forKey: "Fare")
            }
            if fareBreakdown != nil{
                aCoder.encode(fareBreakdown, forKey: "FareBreakdown")
            }
            if fareRules != nil{
                aCoder.encode(fareRules, forKey: "FareRules")
            }
            if isLcc != nil{
                aCoder.encode(isLcc, forKey: "IsLcc")
            }
            if isRefundAllowed != nil{
                aCoder.encode(isRefundAllowed, forKey: "IsRefundAllowed")
            }
            if isReissueAllowed != nil{
                aCoder.encode(isReissueAllowed, forKey: "IsReissueAllowed")
            }
            if isVoidAllowed != nil{
                aCoder.encode(isVoidAllowed, forKey: "IsVoidAllowed")
            }
            if journeyType != nil{
                aCoder.encode(journeyType, forKey: "JourneyType")
            }
            if lastTicketDate != nil{
                aCoder.encode(lastTicketDate, forKey: "LastTicketDate")
            }
            if nonRefundable != nil{
                aCoder.encode(nonRefundable, forKey: "NonRefundable")
            }
            if origin != nil{
                aCoder.encode(origin, forKey: "Origin")
            }
            if providerRemarks != nil{
                aCoder.encode(providerRemarks, forKey: "ProviderRemarks")
            }
            if responseTime != nil{
                aCoder.encode(responseTime, forKey: "ResponseTime")
            }
            if resultId != nil{
                aCoder.encode(resultId, forKey: "ResultId")
            }
            if segments != nil{
                aCoder.encode(segments, forKey: "Segments")
            }
            if ticketAdvisory != nil{
                aCoder.encode(ticketAdvisory, forKey: "TicketAdvisory")
            }
            if tripIndicator != nil{
                aCoder.encode(tripIndicator, forKey: "TripIndicator")
            }
            if validatingAirline != nil{
                aCoder.encode(validatingAirline, forKey: "ValidatingAirline")
            }

        }

    }
