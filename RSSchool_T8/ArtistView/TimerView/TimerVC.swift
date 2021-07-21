//
//  TimerVC.swift
//  RSSchool_T8
//
//  Created by Ivan on 7/20/21.
//

import UIKit

class TimerVC: UIViewController {
    @IBOutlet weak var sliderView: UISlider!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    //var viewSap = UIView()
    
    let lightGreenSea = UIColor(red: 0.13, green: 0.692, blue: 0.557, alpha: 1.0)
    let chillSky = UIColor(red: 0.0, green: 0.7, blue: 1.0, alpha: 1.0)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewStyle()
        buttonsStyle()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Styles
    func viewStyle() {
        view.layer.cornerRadius = 40.0
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        view.layer.shadowRadius = 8.0
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize.zero
        
        let viewSap = UIView(frame: CGRect(x: 0, y: (view.bounds.height / 2) - 40, width: self.view.bounds.width, height: 40.0))
        viewSap.backgroundColor = .white
        view.addSubview(viewSap)
    }
    func buttonsStyle() {
    
        saveButton.backgroundColor = UIColor.white
        saveButton.layer.masksToBounds = false
        saveButton.layer.cornerRadius = 10
        saveButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        saveButton.layer.shadowRadius = 2.0
        saveButton.layer.shadowOffset = CGSize.zero
        saveButton.layer.shadowOpacity = 1.0
        saveButton.setTitleColor(lightGreenSea, for: .normal)
      
        sliderView.minimumValue = 1.0
        sliderView.maximumValue = 5.0
        sliderView.tintColor = lightGreenSea
        
        valueLabel.text = String(format: "%.1f0 s", sliderView.value)

        
    }
    @IBAction func tapSave(_ sender: UIButton) {
        print("save")
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBAction func changeSlider(_ sender: UISlider) {
        print(sender.value)
        valueLabel.text = String(format: "%.1f0 s", sender.value)
    }
}
extension UIView {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height), byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
