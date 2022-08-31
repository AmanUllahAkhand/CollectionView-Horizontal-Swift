//
//  RiverInformationModel.swift
//  CollectionView
//
//  Created by USER on 07/12/2021.
//

import Foundation
import UIKit
 
class RiverInformation {
 
    var RiverImage : UIImage?
    var RiverName : String?
    var RiverCountry : String?
    var RiverDistricts : String?
    var RiverSourch : String?
    var Riverlenght : String?
    
    init(RiverPhoto : UIImage?,Name : String?,country : String?,Districts : String?,Sourch : String?,lenght : String? ){
    
        self.RiverImage = RiverPhoto
        self.RiverName = Name
        self.RiverCountry = country
        self.RiverDistricts = Districts
        self.RiverSourch = Sourch
        self.Riverlenght = lenght
    }
}
