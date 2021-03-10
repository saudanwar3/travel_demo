//
//  FlightDataModel.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 10/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit
import Foundation
import SwiftyJSON
class FlightDataModel: NSObject , NSCoding{


    var alerts : [String]!
    var errors : [String]!
    var isDomestic : Bool!
    var isSuccess : Bool!
    var localCurrency : String!
    var localCurrencyROE : Float!
    var results : [FlightResultModel]!
    var tokenId : String!
    var trackingId : String!


    /**
     * Instantiate the instance using the passed json values to set the properties values
     */
    init(fromJson json: JSON!){
        if json.isEmpty{
            return
        }
        alerts = [String]()
        let alertsArray = json["Alerts"].arrayValue
        for alertsJson in alertsArray{
            alerts.append(alertsJson.stringValue)
        }
        errors = [String]()
        let errorsArray = json["Errors"].arrayValue
        for errorsJson in errorsArray{
            errors.append(errorsJson.stringValue)
        }
        isDomestic = json["IsDomestic"].boolValue
        isSuccess = json["IsSuccess"].boolValue
        localCurrency = json["LocalCurrency"].stringValue
        localCurrencyROE = json["LocalCurrencyROE"].floatValue
        results = [FlightResultModel]()
        let resultsArray = json["Results"].arrayValue
        for resultsJson in resultsArray{
            let value = FlightResultModel(fromJson: resultsJson)
            results.append(value)
        }
        tokenId = json["TokenId"].stringValue
        trackingId = json["TrackingId"].stringValue
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if alerts != nil{
            dictionary["Alerts"] = alerts
        }
        if errors != nil{
            dictionary["Errors"] = errors
        }
        if isDomestic != nil{
            dictionary["IsDomestic"] = isDomestic
        }
        if isSuccess != nil{
            dictionary["IsSuccess"] = isSuccess
        }
        if localCurrency != nil{
            dictionary["LocalCurrency"] = localCurrency
        }
        if localCurrencyROE != nil{
            dictionary["LocalCurrencyROE"] = localCurrencyROE
        }
        if results != nil{
            var dictionaryElements = [[String:Any]]()
            for resultsElement in results {
                dictionaryElements.append(resultsElement.toDictionary())
            }
            dictionary["Results"] = dictionaryElements
        }
        if tokenId != nil{
            dictionary["TokenId"] = tokenId
        }
        if trackingId != nil{
            dictionary["TrackingId"] = trackingId
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         alerts = aDecoder.decodeObject(forKey: "Alerts") as? [String]
         errors = aDecoder.decodeObject(forKey: "Errors") as? [String]
         isDomestic = aDecoder.decodeObject(forKey: "IsDomestic") as? Bool
         isSuccess = aDecoder.decodeObject(forKey: "IsSuccess") as? Bool
         localCurrency = aDecoder.decodeObject(forKey: "LocalCurrency") as? String
         localCurrencyROE = aDecoder.decodeObject(forKey: "LocalCurrencyROE") as? Float
         results = aDecoder.decodeObject(forKey: "Results") as? [FlightResultModel]
         tokenId = aDecoder.decodeObject(forKey: "TokenId") as? String
         trackingId = aDecoder.decodeObject(forKey: "TrackingId") as? String

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
    {
        if alerts != nil{
            aCoder.encode(alerts, forKey: "Alerts")
        }
        if errors != nil{
            aCoder.encode(errors, forKey: "Errors")
        }
        if isDomestic != nil{
            aCoder.encode(isDomestic, forKey: "IsDomestic")
        }
        if isSuccess != nil{
            aCoder.encode(isSuccess, forKey: "IsSuccess")
        }
        if localCurrency != nil{
            aCoder.encode(localCurrency, forKey: "LocalCurrency")
        }
        if localCurrencyROE != nil{
            aCoder.encode(localCurrencyROE, forKey: "LocalCurrencyROE")
        }
        if results != nil{
            aCoder.encode(results, forKey: "Results")
        }
        if tokenId != nil{
            aCoder.encode(tokenId, forKey: "TokenId")
        }
        if trackingId != nil{
            aCoder.encode(trackingId, forKey: "TrackingId")
        }

    }

}
