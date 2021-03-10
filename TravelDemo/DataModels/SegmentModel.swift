//
//  SegmentModel.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 10/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit
import SwiftyJSON

class SegmentModel: NSObject , NSCoding{
        var accumulatedDuration : String!
        var additionalBaggage : String!
        var airline : String!
        var airlineDetails : AirlineDetailModel!
        var airlineName : String!
        var airlinePNR : String!
        var allianceInfo : String!
        var arrivalDate : String!
        var arrivalDateTime : String!
        var arrivalTime : String!
        var availabiLity : String!
        var bookingClass : String!
        var cabinBaggage : String!
        var cabinClass : String!
        var craft : String!
        var departureDate : String!
        var departureDateTime : String!
        var departureTime : String!
        var destination : DestinationModel!
        var duration : String!
        var eTicketEligible : Bool!
        var flightNumber : String!
        var flightStatus : Int!
        var groundTime : String!
        var inFlightServices : String!
        var includedBaggage : String!
        var layoverText : String!
        var mealType : String!
        var mile : Int!
        var noOfSeatAvailable : Int!
        var operatingCarrier : String!
        var origin : DestinationModel!
        var segmentIndicator : Int!
        var status : String!
        var stopOver : Bool!
        var stopPoint : String!
        var stopPointArrivalTime : String!
        var stopPointDepartureTime : String!
        var stops : Int!


        /**
         * Instantiate the instance using the passed json values to set the properties values
         */
        init(fromJson json: JSON!){
            if json.isEmpty{
                return
            }
            accumulatedDuration = json["AccumulatedDuration"].stringValue
            additionalBaggage = json["AdditionalBaggage"].stringValue
            airline = json["Airline"].stringValue
            let airlineDetailsJson = json["AirlineDetails"]
            if !airlineDetailsJson.isEmpty{
                airlineDetails = AirlineDetailModel(fromJson: airlineDetailsJson)
            }
            airlineName = json["AirlineName"].stringValue
            airlinePNR = json["AirlinePNR"].stringValue
            allianceInfo = json["AllianceInfo"].stringValue
            arrivalDate = json["ArrivalDate"].stringValue
            arrivalDateTime = json["ArrivalDateTime"].stringValue
            arrivalTime = json["ArrivalTime"].stringValue
            availabiLity = json["AvailabiLity"].stringValue
            bookingClass = json["BookingClass"].stringValue
            cabinBaggage = json["CabinBaggage"].stringValue
            cabinClass = json["CabinClass"].stringValue
            craft = json["Craft"].stringValue
            departureDate = json["DepartureDate"].stringValue
            departureDateTime = json["DepartureDateTime"].stringValue
            departureTime = json["DepartureTime"].stringValue
            let destinationJson = json["Destination"]
            if !destinationJson.isEmpty{
                destination = DestinationModel(fromJson: destinationJson)
            }
            duration = json["Duration"].stringValue
            eTicketEligible = json["ETicketEligible"].boolValue
            flightNumber = json["FlightNumber"].stringValue
            flightStatus = json["FlightStatus"].intValue
            groundTime = json["GroundTime"].stringValue
            inFlightServices = json["InFlightServices"].stringValue
            includedBaggage = json["IncludedBaggage"].stringValue
            layoverText = json["LayoverText"].stringValue
            mealType = json["MealType"].stringValue
            mile = json["Mile"].intValue
            noOfSeatAvailable = json["NoOfSeatAvailable"].intValue
            operatingCarrier = json["OperatingCarrier"].stringValue
            let originJson = json["Origin"]
            if !originJson.isEmpty{
                origin = DestinationModel(fromJson: originJson)
            }
            segmentIndicator = json["SegmentIndicator"].intValue
            status = json["Status"].stringValue
            stopOver = json["StopOver"].boolValue
            stopPoint = json["StopPoint"].stringValue
            stopPointArrivalTime = json["StopPointArrivalTime"].stringValue
            stopPointDepartureTime = json["StopPointDepartureTime"].stringValue
            stops = json["Stops"].intValue
        }

        /**
         * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
         */
        func toDictionary() -> [String:Any]
        {
            var dictionary = [String:Any]()
            if accumulatedDuration != nil{
                dictionary["AccumulatedDuration"] = accumulatedDuration
            }
            if additionalBaggage != nil{
                dictionary["AdditionalBaggage"] = additionalBaggage
            }
            if airline != nil{
                dictionary["Airline"] = airline
            }
            if airlineDetails != nil{
                dictionary["AirlineDetails"] = airlineDetails.toDictionary()
            }
            if airlineName != nil{
                dictionary["AirlineName"] = airlineName
            }
            if airlinePNR != nil{
                dictionary["AirlinePNR"] = airlinePNR
            }
            if allianceInfo != nil{
                dictionary["AllianceInfo"] = allianceInfo
            }
            if arrivalDate != nil{
                dictionary["ArrivalDate"] = arrivalDate
            }
            if arrivalDateTime != nil{
                dictionary["ArrivalDateTime"] = arrivalDateTime
            }
            if arrivalTime != nil{
                dictionary["ArrivalTime"] = arrivalTime
            }
            if availabiLity != nil{
                dictionary["AvailabiLity"] = availabiLity
            }
            if bookingClass != nil{
                dictionary["BookingClass"] = bookingClass
            }
            if cabinBaggage != nil{
                dictionary["CabinBaggage"] = cabinBaggage
            }
            if cabinClass != nil{
                dictionary["CabinClass"] = cabinClass
            }
            if craft != nil{
                dictionary["Craft"] = craft
            }
            if departureDate != nil{
                dictionary["DepartureDate"] = departureDate
            }
            if departureDateTime != nil{
                dictionary["DepartureDateTime"] = departureDateTime
            }
            if departureTime != nil{
                dictionary["DepartureTime"] = departureTime
            }
            if destination != nil{
                dictionary["Destination"] = destination.toDictionary()
            }
            if duration != nil{
                dictionary["Duration"] = duration
            }
            if eTicketEligible != nil{
                dictionary["ETicketEligible"] = eTicketEligible
            }
            if flightNumber != nil{
                dictionary["FlightNumber"] = flightNumber
            }
            if flightStatus != nil{
                dictionary["FlightStatus"] = flightStatus
            }
            if groundTime != nil{
                dictionary["GroundTime"] = groundTime
            }
            if inFlightServices != nil{
                dictionary["InFlightServices"] = inFlightServices
            }
            if includedBaggage != nil{
                dictionary["IncludedBaggage"] = includedBaggage
            }
            if layoverText != nil{
                dictionary["LayoverText"] = layoverText
            }
            if mealType != nil{
                dictionary["MealType"] = mealType
            }
            if mile != nil{
                dictionary["Mile"] = mile
            }
            if noOfSeatAvailable != nil{
                dictionary["NoOfSeatAvailable"] = noOfSeatAvailable
            }
            if operatingCarrier != nil{
                dictionary["OperatingCarrier"] = operatingCarrier
            }
            if origin != nil{
                dictionary["Origin"] = origin.toDictionary()
            }
            if segmentIndicator != nil{
                dictionary["SegmentIndicator"] = segmentIndicator
            }
            if status != nil{
                dictionary["Status"] = status
            }
            if stopOver != nil{
                dictionary["StopOver"] = stopOver
            }
            if stopPoint != nil{
                dictionary["StopPoint"] = stopPoint
            }
            if stopPointArrivalTime != nil{
                dictionary["StopPointArrivalTime"] = stopPointArrivalTime
            }
            if stopPointDepartureTime != nil{
                dictionary["StopPointDepartureTime"] = stopPointDepartureTime
            }
            if stops != nil{
                dictionary["Stops"] = stops
            }
            return dictionary
        }

        /**
        * NSCoding required initializer.
        * Fills the data from the passed decoder
        */
        @objc required init(coder aDecoder: NSCoder)
        {
             accumulatedDuration = aDecoder.decodeObject(forKey: "AccumulatedDuration") as? String
             additionalBaggage = aDecoder.decodeObject(forKey: "AdditionalBaggage") as? String
             airline = aDecoder.decodeObject(forKey: "Airline") as? String
             airlineDetails = aDecoder.decodeObject(forKey: "AirlineDetails") as? AirlineDetailModel
             airlineName = aDecoder.decodeObject(forKey: "AirlineName") as? String
             airlinePNR = aDecoder.decodeObject(forKey: "AirlinePNR") as? String
             allianceInfo = aDecoder.decodeObject(forKey: "AllianceInfo") as? String
             arrivalDate = aDecoder.decodeObject(forKey: "ArrivalDate") as? String
             arrivalDateTime = aDecoder.decodeObject(forKey: "ArrivalDateTime") as? String
             arrivalTime = aDecoder.decodeObject(forKey: "ArrivalTime") as? String
             availabiLity = aDecoder.decodeObject(forKey: "AvailabiLity") as? String
             bookingClass = aDecoder.decodeObject(forKey: "BookingClass") as? String
             cabinBaggage = aDecoder.decodeObject(forKey: "CabinBaggage") as? String
             cabinClass = aDecoder.decodeObject(forKey: "CabinClass") as? String
             craft = aDecoder.decodeObject(forKey: "Craft") as? String
             departureDate = aDecoder.decodeObject(forKey: "DepartureDate") as? String
             departureDateTime = aDecoder.decodeObject(forKey: "DepartureDateTime") as? String
             departureTime = aDecoder.decodeObject(forKey: "DepartureTime") as? String
             destination = aDecoder.decodeObject(forKey: "Destination") as? DestinationModel
             duration = aDecoder.decodeObject(forKey: "Duration") as? String
             eTicketEligible = aDecoder.decodeObject(forKey: "ETicketEligible") as? Bool
             flightNumber = aDecoder.decodeObject(forKey: "FlightNumber") as? String
             flightStatus = aDecoder.decodeObject(forKey: "FlightStatus") as? Int
             groundTime = aDecoder.decodeObject(forKey: "GroundTime") as? String
             inFlightServices = aDecoder.decodeObject(forKey: "InFlightServices") as? String
             includedBaggage = aDecoder.decodeObject(forKey: "IncludedBaggage") as? String
             layoverText = aDecoder.decodeObject(forKey: "LayoverText") as? String
             mealType = aDecoder.decodeObject(forKey: "MealType") as? String
             mile = aDecoder.decodeObject(forKey: "Mile") as? Int
             noOfSeatAvailable = aDecoder.decodeObject(forKey: "NoOfSeatAvailable") as? Int
             operatingCarrier = aDecoder.decodeObject(forKey: "OperatingCarrier") as? String
             origin = aDecoder.decodeObject(forKey: "Origin") as? DestinationModel
             segmentIndicator = aDecoder.decodeObject(forKey: "SegmentIndicator") as? Int
             status = aDecoder.decodeObject(forKey: "Status") as? String
             stopOver = aDecoder.decodeObject(forKey: "StopOver") as? Bool
             stopPoint = aDecoder.decodeObject(forKey: "StopPoint") as? String
             stopPointArrivalTime = aDecoder.decodeObject(forKey: "StopPointArrivalTime") as? String
             stopPointDepartureTime = aDecoder.decodeObject(forKey: "StopPointDepartureTime") as? String
             stops = aDecoder.decodeObject(forKey: "Stops") as? Int

        }

        /**
        * NSCoding required method.
        * Encodes mode properties into the decoder
        */
        func encode(with aCoder: NSCoder)
        {
            if accumulatedDuration != nil{
                aCoder.encode(accumulatedDuration, forKey: "AccumulatedDuration")
            }
            if additionalBaggage != nil{
                aCoder.encode(additionalBaggage, forKey: "AdditionalBaggage")
            }
            if airline != nil{
                aCoder.encode(airline, forKey: "Airline")
            }
            if airlineDetails != nil{
                aCoder.encode(airlineDetails, forKey: "AirlineDetails")
            }
            if airlineName != nil{
                aCoder.encode(airlineName, forKey: "AirlineName")
            }
            if airlinePNR != nil{
                aCoder.encode(airlinePNR, forKey: "AirlinePNR")
            }
            if allianceInfo != nil{
                aCoder.encode(allianceInfo, forKey: "AllianceInfo")
            }
            if arrivalDate != nil{
                aCoder.encode(arrivalDate, forKey: "ArrivalDate")
            }
            if arrivalDateTime != nil{
                aCoder.encode(arrivalDateTime, forKey: "ArrivalDateTime")
            }
            if arrivalTime != nil{
                aCoder.encode(arrivalTime, forKey: "ArrivalTime")
            }
            if availabiLity != nil{
                aCoder.encode(availabiLity, forKey: "AvailabiLity")
            }
            if bookingClass != nil{
                aCoder.encode(bookingClass, forKey: "BookingClass")
            }
            if cabinBaggage != nil{
                aCoder.encode(cabinBaggage, forKey: "CabinBaggage")
            }
            if cabinClass != nil{
                aCoder.encode(cabinClass, forKey: "CabinClass")
            }
            if craft != nil{
                aCoder.encode(craft, forKey: "Craft")
            }
            if departureDate != nil{
                aCoder.encode(departureDate, forKey: "DepartureDate")
            }
            if departureDateTime != nil{
                aCoder.encode(departureDateTime, forKey: "DepartureDateTime")
            }
            if departureTime != nil{
                aCoder.encode(departureTime, forKey: "DepartureTime")
            }
            if destination != nil{
                aCoder.encode(destination, forKey: "Destination")
            }
            if duration != nil{
                aCoder.encode(duration, forKey: "Duration")
            }
            if eTicketEligible != nil{
                aCoder.encode(eTicketEligible, forKey: "ETicketEligible")
            }
            if flightNumber != nil{
                aCoder.encode(flightNumber, forKey: "FlightNumber")
            }
            if flightStatus != nil{
                aCoder.encode(flightStatus, forKey: "FlightStatus")
            }
            if groundTime != nil{
                aCoder.encode(groundTime, forKey: "GroundTime")
            }
            if inFlightServices != nil{
                aCoder.encode(inFlightServices, forKey: "InFlightServices")
            }
            if includedBaggage != nil{
                aCoder.encode(includedBaggage, forKey: "IncludedBaggage")
            }
            if layoverText != nil{
                aCoder.encode(layoverText, forKey: "LayoverText")
            }
            if mealType != nil{
                aCoder.encode(mealType, forKey: "MealType")
            }
            if mile != nil{
                aCoder.encode(mile, forKey: "Mile")
            }
            if noOfSeatAvailable != nil{
                aCoder.encode(noOfSeatAvailable, forKey: "NoOfSeatAvailable")
            }
            if operatingCarrier != nil{
                aCoder.encode(operatingCarrier, forKey: "OperatingCarrier")
            }
            if origin != nil{
                aCoder.encode(origin, forKey: "Origin")
            }
            if segmentIndicator != nil{
                aCoder.encode(segmentIndicator, forKey: "SegmentIndicator")
            }
            if status != nil{
                aCoder.encode(status, forKey: "Status")
            }
            if stopOver != nil{
                aCoder.encode(stopOver, forKey: "StopOver")
            }
            if stopPoint != nil{
                aCoder.encode(stopPoint, forKey: "StopPoint")
            }
            if stopPointArrivalTime != nil{
                aCoder.encode(stopPointArrivalTime, forKey: "StopPointArrivalTime")
            }
            if stopPointDepartureTime != nil{
                aCoder.encode(stopPointDepartureTime, forKey: "StopPointDepartureTime")
            }
            if stops != nil{
                aCoder.encode(stops, forKey: "Stops")
            }

        }

    }
