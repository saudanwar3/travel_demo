//
//  ViewController.swift
//  TravelDemo
//
//  Created by Muhammad Saud Anwar on 09/03/2021.
//  Copyright © 2021 Muhammad Saud Anwar. All rights reserved.
//

import UIKit
import SwiftyJSON
class ViewController: UIViewController {

    var flightModel:FlightDataModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadJsonfile()
    }

    
    func loadJsonfile() -> Void {
        self.flightModel = self.loadJson(fileName: "SearchList")!
        print(self.flightModel?.results.first?.origin ?? "")
    }

}

extension ViewController
{
    func loadJson(fileName: String) -> FlightDataModel? {
       guard
            let url = Bundle.main.url(forResource: fileName, withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let dictionary = try? JSON(data),
            let flightData = try? FlightDataModel(fromJson: dictionary)
       else {
        
            return nil
       }

       return flightData
    }

}
