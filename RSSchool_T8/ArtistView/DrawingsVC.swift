//
//  DrawingsVC.swift
//  RSSchool_T8
//
//  Created by Ivan on 7/20/21.
//

import UIKit

class DrawingsVC: UIViewController {
    @IBOutlet weak var planetButton: UIButton!
    @IBOutlet weak var headButton: UIButton!
    @IBOutlet weak var treeButton: UIButton!
    @IBOutlet weak var landscapeButton: UIButton!
    

    let lightGreenSea = UIColor(red: 0.13, green: 0.692, blue: 0.557, alpha: 1.0)
    let chillSky = UIColor(red: 0.0, green: 0.7, blue: 1.0, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.buttonsStyle()
        self.settingsNavBar()
    }
    
    //MARK: - Styles
    func buttonsStyle() {
        
        self.planetButton.backgroundColor = UIColor.white
        self.planetButton.layer.masksToBounds = false
        self.planetButton.tag = 0
        self.planetButton.layer.cornerRadius = 10
        self.planetButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        self.planetButton.layer.shadowRadius = 2.0
        self.planetButton.layer.shadowOffset = CGSize.zero
        self.planetButton.layer.shadowOpacity = 1.0
        self.planetButton .setTitleColor(lightGreenSea, for: .normal)
        
        self.headButton.backgroundColor = UIColor.white
        self.headButton.layer.masksToBounds = false
        self.headButton.tag = 1
        self.headButton.layer.cornerRadius = 10
        self.headButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        self.headButton.layer.shadowRadius = 2.0
        self.headButton.layer.shadowOffset = CGSize.zero
        self.headButton.layer.shadowOpacity = 1.0
        self.headButton .setTitleColor(lightGreenSea, for: .normal)
        
        self.treeButton.backgroundColor = UIColor.white
        self.treeButton.layer.masksToBounds = false
        self.treeButton.tag = 2
        self.treeButton.layer.cornerRadius = 10
        self.treeButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        self.treeButton.layer.shadowRadius = 2.0
        self.treeButton.layer.shadowOffset = CGSize.zero
        self.treeButton.layer.shadowOpacity = 1.0
        self.treeButton .setTitleColor(lightGreenSea, for: .normal)
        
        self.landscapeButton.backgroundColor = UIColor.white
        self.landscapeButton.layer.masksToBounds = false
        self.landscapeButton.tag = 3
        self.landscapeButton.layer.cornerRadius = 10
        self.landscapeButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        self.landscapeButton.layer.shadowRadius = 2.0
        self.landscapeButton.layer.shadowOffset = CGSize.zero
        self.landscapeButton.layer.shadowOpacity = 1.0
        self.landscapeButton .setTitleColor(lightGreenSea, for: .normal)
    }
    func changeColor(_ button: UIButton) {
        
    }
    
    //MARK: NavigationBarStyles
    func settingsNavBar() {
        let label = UILabel()
        label.backgroundColor = UIColor.clear
        label.font = UIFont(name: "Montserrat-Regular", size:17)
        label.textAlignment = .center;
        label.textColor = UIColor.black
        self.navigationItem.titleView = label
        label.text = "Drawings"
        label.sizeToFit()
        
        self.navigationController?.navigationBar.tintColor = lightGreenSea
        
    }
    //MARK: - Actions
    @IBAction func selectPicture(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            planetButton.layer.shadowColor = lightGreenSea.cgColor
            headButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
            treeButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
            landscapeButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        case 1:
            planetButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
            headButton.layer.shadowColor = lightGreenSea.cgColor
            treeButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
            landscapeButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        case 2:
            planetButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
            headButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
            treeButton.layer.shadowColor = lightGreenSea.cgColor
            landscapeButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        case 3:
            planetButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
            headButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
            treeButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
            landscapeButton.layer.shadowColor = lightGreenSea.cgColor
        default:
            print("Error button")
        }
        print("select")
    }
}
