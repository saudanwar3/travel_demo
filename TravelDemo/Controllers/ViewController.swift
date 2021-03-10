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
    
    // MARK: IBOUTLETS
    
    @IBOutlet weak var buttonsStackView: UIStackView!
    
    @IBOutlet weak var cheapestFlightMainView: UIView!
    @IBOutlet weak var cheapestFlightIconImgView: UIImageView!
    @IBOutlet weak var cheapestFlightLbl: UILabel!
    @IBOutlet weak var cheapestFlightBtn: UIButton!
    
    @IBOutlet weak var fastFlightMainView: UIView!
    @IBOutlet weak var fastFlightIconImgView: UIImageView!
    @IBOutlet weak var fastFlightLbl: UILabel!
    @IBOutlet weak var fastFlightBtn: UIButton!
    
    @IBOutlet weak var flexibleMainView: UIView!
    @IBOutlet weak var flexibleIconImgView: UIImageView!
    @IBOutlet weak var flexibleLbl: UILabel!
    @IBOutlet weak var flexibleBtn: UIButton!
    
    @IBOutlet weak var flightCollectionView: UICollectionView!
    
    // MARK: Variables
    var flightModel:FlightDataModel?
    let inset: CGFloat = 10
    let minimumLineSpacing: CGFloat = 10
    let minimumInteritemSpacing: CGFloat = 10
    let cellsPerRow = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initializeView()
        self.loadJsonfile()
//        self.cheapestFlightBtnClicked(self.cheapestFlightBtn)
    }
    
    func initializeView() -> Void {
        
        self.flightCollectionView.delegate = self
        self.flightCollectionView.dataSource = self
        let flightCollectionCell = UINib.init(nibName: String(describing: FlightCollectionViewCell.self), bundle: nil)
        self.flightCollectionView.register(flightCollectionCell, forCellWithReuseIdentifier: String(describing: FlightCollectionViewCell.self))
        
        self.cheapestFlightMainView.backgroundColor = .white
        self.cheapestFlightLbl.textColor = .link
        self.cheapestFlightIconImgView.image = self.cheapestFlightIconImgView.image?.withRenderingMode(.alwaysTemplate)
        self.cheapestFlightIconImgView.tintColor = UIColor.link

        self.fastFlightMainView.backgroundColor = .white
        self.fastFlightLbl.textColor = .darkGray
        fastFlightIconImgView.image = fastFlightIconImgView.image?.withRenderingMode(.alwaysTemplate)
        fastFlightIconImgView.tintColor = UIColor.darkGray
        
        self.flexibleMainView.backgroundColor = .white
        self.flexibleLbl.textColor = .darkGray
        flexibleIconImgView.image = flexibleIconImgView.image?.withRenderingMode(.alwaysTemplate)
        flexibleIconImgView.tintColor = UIColor.darkGray
        
        
    }
    func loadJsonfile() -> Void {
        self.flightModel = self.loadJson(fileName: "SearchList")!
        print(self.flightModel?.results.first?.origin ?? "")
        self.flightCollectionView.reloadData()
    }
    
    // MARK: Button Actions
    @IBAction func cheapestFlightBtnClicked(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveLinear, animations: {
            self.cheapestFlightMainView.backgroundColor = .white
            self.cheapestFlightLbl.textColor = .link
            self.cheapestFlightIconImgView.image = self.cheapestFlightIconImgView.image?.withRenderingMode(.alwaysTemplate)
            self.cheapestFlightIconImgView.tintColor = UIColor.link
            
            self.fastFlightMainView.backgroundColor = .white
            self.fastFlightLbl.textColor = .darkGray
            self.fastFlightIconImgView.image = self.fastFlightIconImgView.image?.withRenderingMode(.alwaysTemplate)
            self.fastFlightIconImgView.tintColor = UIColor.darkGray
            
            self.flexibleMainView.backgroundColor = .white
            self.flexibleLbl.textColor = .darkGray
            self.flexibleIconImgView.image = self.flexibleIconImgView.image?.withRenderingMode(.alwaysTemplate)
            self.flexibleIconImgView.tintColor = UIColor.darkGray
        }) { _ in
            self.flightCollectionView.reloadData()
        }
        
        
    }
    
    @IBAction func fastFlightBtnClicked(_ sender: UIButton) {
        UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveLinear, animations: {
            self.fastFlightMainView.backgroundColor = .white
            self.fastFlightLbl.textColor = .link
            self.fastFlightIconImgView.image = self.fastFlightIconImgView.image?.withRenderingMode(.alwaysTemplate)
            self.fastFlightIconImgView.tintColor = UIColor.link
            
            self.cheapestFlightMainView.backgroundColor = .white
            self.cheapestFlightLbl.textColor = .darkGray
            self.cheapestFlightIconImgView.image = self.cheapestFlightIconImgView.image?.withRenderingMode(.alwaysTemplate)
            self.cheapestFlightIconImgView.tintColor = UIColor.darkGray
            
            self.flexibleMainView.backgroundColor = .white
            self.flexibleLbl.textColor = .darkGray
            self.flexibleIconImgView.image = self.flexibleIconImgView.image?.withRenderingMode(.alwaysTemplate)
            self.flexibleIconImgView.tintColor = UIColor.darkGray
        }) { _ in
            self.flightCollectionView.reloadData()
        }

        
        
    }
    
    @IBAction func flexibleFlightBtnClicked(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveLinear, animations: {
            self.flexibleMainView.backgroundColor = .white
            self.flexibleLbl.textColor = .link
            self.flexibleIconImgView.image = self.flexibleIconImgView.image?.withRenderingMode(.alwaysTemplate)
            self.flexibleIconImgView.tintColor = UIColor.link
            
            self.cheapestFlightMainView.backgroundColor = .white
            self.cheapestFlightLbl.textColor = .darkGray
            self.cheapestFlightIconImgView.image = self.cheapestFlightIconImgView.image?.withRenderingMode(.alwaysTemplate)
            self.cheapestFlightIconImgView.tintColor = UIColor.darkGray
            
            self.fastFlightMainView.backgroundColor = .white
            self.fastFlightLbl.textColor = .darkGray
            self.fastFlightIconImgView.image = self.fastFlightIconImgView.image?.withRenderingMode(.alwaysTemplate)
            self.fastFlightIconImgView.tintColor = UIColor.darkGray
        }) { _ in
            self.flightCollectionView.reloadData()

        }
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (self.flightModel?.results.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String.init(describing: FlightCollectionViewCell.self), for: indexPath) as!  FlightCollectionViewCell
        let airlineDetails = self.flightModel?.results[indexPath.row].segments.first?.airlineDetails
        var airlineCode:String = ""
        var flightNum:String = ""
        
        if airlineDetails == nil {
            airlineCode = "N/A"
            flightNum = ""
        }
        else
        {
            airlineCode = (self.flightModel?.results[indexPath.row].segments.first?.airlineDetails.airlineCode)! + " - "
            flightNum = (self.flightModel?.results[indexPath.row].segments.first?.airlineDetails.flightNumber)!

        }
        let flightDot = UIImage.gifImageWithName("flight_dots")
               let outboundFlightDot = UIImage.gifImageWithName("Flight_Reverse_Dots")

               cell.flightDotImgView.image = flightDot
               cell.outboundFlightDotImgView.image = outboundFlightDot

        cell.flightNumLbl.text = airlineCode + flightNum
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let marginsAndInsets = inset * 2 + collectionView.safeAreaInsets.left + collectionView.safeAreaInsets.right + minimumInteritemSpacing * CGFloat(cellsPerRow - 1)
        let itemWidth = ((collectionView.bounds.size.width - marginsAndInsets) / CGFloat(cellsPerRow)).rounded(.down)
        let itemHeight = itemWidth / 1.0 //ratio

        return CGSize(width: itemWidth, height: itemHeight )

    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        cell.transform = CGAffineTransform(scaleX: 0.11, y: 0.11)
        UIView.animate(withDuration: 0.5) {
            cell.transform = CGAffineTransform.identity
        }
        
        self.viewWillLayoutSubviews()
        
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
