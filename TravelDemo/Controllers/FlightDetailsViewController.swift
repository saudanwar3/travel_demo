//
//  FlightDetailsViewController.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 15/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit

class FlightDetailsViewController: UIViewController {

    
    @IBOutlet weak var originCityLbl: UILabel!
    @IBOutlet weak var destinationCityLbl: UILabel!
    @IBOutlet weak var originDepartTimeLbl: UILabel!
    @IBOutlet weak var destinationArrivalTimeLbl: UILabel!
    @IBOutlet weak var flightDurationLbl: UILabel!
    @IBOutlet weak var originDepartDateLbl: UILabel!
    @IBOutlet weak var destinationArrivalDate: UILabel!
    @IBOutlet weak var originCityCodeLbl: UILabel!
    @IBOutlet weak var originAirportLbl: UILabel!
    @IBOutlet weak var destinationCityCodeLbl: UILabel!
    @IBOutlet weak var destinationAirportLbl: UILabel!
    @IBOutlet weak var passengerFareLbl: UILabel!
    @IBOutlet weak var taxesLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    
    var flightSegment:SegmentModel?
    var fareModel:FareBreakdownModel?

    
    class func instantiateFromStoryboard() -> FlightDetailsViewController
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! FlightDetailsViewController
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        var inboundDepartTime:String = (self.flightSegment?.departureTime)!
        var inboundArrivalTime:String = (self.flightSegment?.arrivalTime)!
        let inboundOriginDepartTime: String = AppHelper.convertDateFormat(inputDate:&inboundDepartTime)
        let inboundOriginArrivalTime: String = AppHelper.convertDateFormat(inputDate:&inboundArrivalTime)
        let inboundStops: String = String(describing: self.flightSegment?.stops ?? 0) + " stop"
        let inboundOriginAirportCode: String = (self.flightSegment?.origin.airportCode ?? "N/A")
        let inboundFlightDuration: String = (self.flightSegment?.accumulatedDuration)!
        let inboundBaggage: String = (self.flightSegment?.includedBaggage)!
        let inboundCabinClass: String = (self.flightSegment?.cabinClass)!
        let inboundAirlineName: String = (self.flightSegment?.airlineDetails.airlineName)!
        let inboundAirlineFlightNum: String = (self.flightSegment?.airlineDetails.flightNumber)!
        let fare = "AED " + String(format: "%.f", self.fareModel?.baseFare! as! CVarArg) as String
        let tax = "AED " + String(format: "%.f", self.fareModel?.tax! as! CVarArg) as String
        let total = "AED " + String(format: "%.f", self.fareModel?.totalFare! as! CVarArg) as String

        
        self.originCityLbl.text = self.flightSegment?.origin.cityName
        self.destinationCityLbl.text = self.flightSegment?.destination.cityName
        self.originDepartTimeLbl.text = inboundOriginDepartTime
        self.destinationArrivalTimeLbl.text = inboundOriginArrivalTime
        self.flightDurationLbl.text = inboundFlightDuration
        self.originDepartDateLbl.text = inboundOriginDepartTime
        self.destinationArrivalDate.text = inboundOriginArrivalTime
        self.originCityCodeLbl.text = self.flightSegment?.origin.cityCode
        self.destinationCityCodeLbl.text = self.flightSegment?.destination.cityCode
        self.originAirportLbl.text = self.flightSegment?.origin.countryName
        self.destinationAirportLbl.text = self.flightSegment?.destination.countryName
        self.passengerFareLbl.text = fare
        self.taxesLbl.text = tax
        self.totalLbl.text = total


    }
    
    @IBAction func backBtnClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
