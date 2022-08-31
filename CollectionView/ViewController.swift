//
//  ViewController.swift
//  CollectionView
//
//  Created by USER on 07/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var riverImage: UIImageView!
    @IBOutlet weak var riverNameLbl: UILabel!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var districtsLbl: UILabel!
    @IBOutlet weak var sourchLbl: UILabel!
    @IBOutlet weak var lengthLbl: UILabel!
    
    var RiverList = [RiverInformation]()
    //var RiverName = ["Padma River","Meghna River","Jamuna River","Karnaphuli","Teesta River","Buriganga River","Dhaleshwari River","Surma River","Shitalakshya River","Kushiyara River"]
   //var RiverName = [RiverInformation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        generatRiverInformation()
        
        
        
        riverImage.isHidden = true
        riverNameLbl.isHidden = true
        countryLbl.isHidden = true
        districtsLbl.isHidden = true
        sourchLbl.isHidden = true
        lengthLbl.isHidden = true
    }
    
    func generatRiverInformation(){
        RiverList.removeAll()
        RiverList.append(RiverInformation(RiverPhoto: UIImage(named: "Padma River"), Name: "পদ্মা নদী", country: "বাংলাদেশ", Districts: " নবাবগঞ্জ, রাজশাহী, মানিকগঞ্জ, মুন্সিগঞ্জ, নাটোর, পাবনা, কুষ্টিয়া, মাদারীপুর, শরীয়তপুর, ফরিদপুর, রাজবাড়ি, চাঁদপুর", Sourch: "গঙ্গা", lenght: "১২০ কিলোমিটার (৭৫ মাইল)"))
        
        RiverList.append(RiverInformation(RiverPhoto: UIImage(named: "Meghna River"), Name: "মেঘনা নদী", country: "বাংলাদেশ", Districts: "কিশোরগঞ্জ নরসিংদী ব্রাহ্মণবাড়িয়া নারায়ণগঞ্জ, কুমিল্লা মুন্সিগঞ্জ চাঁদপুর লক্ষ্মীপুর", Sourch: "বরাক নদী", lenght: "১৫৬ কিলোমিটার (৯৭ মাইল)"))
        
        RiverList.append(RiverInformation(RiverPhoto: UIImage(named: "Jamuna River"), Name: "যমুনা নদী ", country: "বাংলাদেশ", Districts: "টাঙ্গাইল জেলা, সিরাজগঞ্জ জেলা,পাবনা জেলা, গাইবান্ধা জেলা", Sourch: "ব্রহ্মপুত্র", lenght: "৫০ কিলোমিটার (৩১ মাইল)"))
        
        RiverList.append(RiverInformation(RiverPhoto: UIImage(named: "Karnaphuli"), Name:"কর্ণফুলী নদী", country: "বাংলাদেশ,ভারত", Districts: "রাঙ্গামাটি জেলা, চট্টগ্রাম জেলা", Sourch: "লুসাই পাহাড়", lenght: "৩২০ কিলোমিটার (১৯৯ মাইল)"))
        
        RiverList.append(RiverInformation(RiverPhoto: UIImage(named: "Teesta River"), Name: "তিস্তা নদী", country: "বাংলাদেশ,ভারত", Districts: "লালমনিরহাট,নীলফামারী, কুড়িগ্রাম, রংপুর, গাইবান্ধা, দার্জিলিং, জলপাইগুড়ি", Sourch: "পাউহুনরি(সো লামো),জেমু হিমবাহ,গুরুদংমার লেক,চোলামু লেক, উত্তর সিকিমের হিমালয় পর্বতমালা", lenght: "৩১৫ কিলোমিটার (১৯৬ মাইল)"))
        
        RiverList.append(RiverInformation(RiverPhoto: UIImage(named: "Buriganga River"), Name: "বুড়িগঙ্গা নদী", country: "বাংলাদেশ", Districts: "ঢাকা জেলা, নারায়ণগঞ্জ জেলা", Sourch: "ধলেশ্বরী নদী", lenght: "২৯ কিলোমিটার (১৮ মাইল)"))
        
        RiverList.append(RiverInformation(RiverPhoto: UIImage(named: "Dhaleshwari River"), Name: "ধলেশ্বরী নদী", country: "বাংলাদেশ", Districts: "টাঙ্গাইল জেলা মানিকগঞ্জ জেলা, ঢাকা জেলা নারায়ণগঞ্জ জেলা মুন্সিগঞ্জ জেলা", Sourch: "যমুনা নদী", lenght: "২৯২ কিলোমিটার (১৮১ মাইল)"))
        
        RiverList.append(RiverInformation(RiverPhoto: UIImage(named: "Surma River"), Name: "সুরমা নদী", country: "বাংলাদেশ, ভারত", Districts: "সিলেট জেলা, সুনামগঞ্জ জেলা", Sourch: "বরাক নদী", lenght: "২৪৯ কিলোমিটার (১৫৫ মাইল)"))
        
        RiverList.append(RiverInformation(RiverPhoto: UIImage(named: "Shitalakshya River"), Name: "শীতলক্ষ্যা নদী", country: "বাংলাদেশ", Districts: "নরসিংদী গাজীপুর, ঢাকা নারায়ণগঞ্জ", Sourch: "", lenght: "১০৮ কিলোমিটার (৬৭ মাইল)"))
        
        RiverList.append(RiverInformation(RiverPhoto: UIImage(named: "Kushiyara River"), Name: "কুশিয়ারা নদী", country: "বাংলাদেশ, ভারত", Districts: "সিলেট জেলা, মৌলভীবাজার জেলা, সুনামগঞ্জ জেলা, হবিগঞ্জ জেলা, কিশোরগঞ্জ জেলা", Sourch:"বরাক নদী", lenght: "২৮৮ কিলোমিটার (১৭৯ মাইল)"))
      
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SetupContainerView()
    }
    
    func SetupContainerView(){
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.reloadData()
    }

}
extension ViewController : UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return RiverList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RiverListCell", for: indexPath) as! RiverListCell
        
        if indexPath.item < RiverList.count {
        let rivername = RiverList [indexPath.item]
            cell.nameLbl.text = rivername.RiverName }
        return cell
}
}
extension ViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.size.width/3
        let height = collectionView.bounds.size.height
        return CGSize(width: width, height: height)
    }
    
}
extension ViewController : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        riverImage.isHidden = false
        riverNameLbl.isHidden = false
        countryLbl.isHidden = false
        districtsLbl.isHidden = false
        sourchLbl.isHidden = false
        lengthLbl.isHidden = false
        
// let selectedItem = RiverName [indexPath.item]
//        riverNameLbl.text = " \(selectedItem)"
//        riverImage.image = UIImage(named: "\(selectedItem)")
        
        let information = RiverList[indexPath.item]
        riverNameLbl.text = information.RiverName
        riverImage.image = information.RiverImage
        countryLbl.text = "দেশ : \((information.RiverCountry)!)"
        districtsLbl.text = "জেলাসমূহ : \((information.RiverDistricts)!)"
        sourchLbl.text = "উৎস : \((information.RiverSourch)!)"
        lengthLbl.text = "দৈর্ঘ্য : \(( information.Riverlenght)!)"
        
        


    }
    
}

