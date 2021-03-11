//
//  FlightCollectionViewCell.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 10/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit

class FlightCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var flightNumLbl: UILabel!
    @IBOutlet weak var flightDotImgView: UIImageView!
    @IBOutlet weak var outboundFlightDotImgView: UIImageView!
    
    @IBOutlet weak var inboundAirlineIconImgView: UIImageView!
    @IBOutlet weak var inboundDepartTime: UILabel!
    @IBOutlet weak var inboundStops: UILabel!
    @IBOutlet weak var inboundArrivalTime: UILabel!
    @IBOutlet weak var inboundOriginAirportCodeLbl: UILabel!
    @IBOutlet weak var inboundFlightDurationLbl: UILabel!
    @IBOutlet weak var inboundDestinationAirportCodeLbl: UILabel!
    @IBOutlet weak var inboundAirlineNameLbl: UILabel!
    @IBOutlet weak var inboundCraftNameLbl: UILabel!
    @IBOutlet weak var inboundCabinClassNameLbl: UILabel!
    @IBOutlet weak var inboundBaggageLbl: UILabel!
    
    
    @IBOutlet weak var outboundFlightNumLbl: UILabel!
    @IBOutlet weak var outboundDepartTime: UILabel!
    @IBOutlet weak var outboundAirlineIconImgView: UIImageView!
    @IBOutlet weak var outboundStopsLbl: UILabel!
    @IBOutlet weak var outboundArrivalTimeLbl: UILabel!
    @IBOutlet weak var outboundOriginAirportCodeLbl: UILabel!
    @IBOutlet weak var outboundFlightDurationLbl: UILabel!
    @IBOutlet weak var outboundDestinationAirportCodeLbl: UILabel!
    @IBOutlet weak var outboundAirlineNameLbl: UILabel!
    @IBOutlet weak var outboundAirCraftNumLbl: UILabel!
    @IBOutlet weak var outboundBaggageLbl: UILabel!
    @IBOutlet weak var outboundCabinClassLbl: UILabel!
    
    @IBOutlet weak var fareLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        

    }

}
