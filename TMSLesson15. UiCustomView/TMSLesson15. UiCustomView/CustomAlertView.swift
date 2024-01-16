//
//  CustomAlertView.swift
//  TMSLesson15. UiCustomView
//
//  Created by Mac on 16.01.24.
//

import UIKit

protocol AlertDelegate: AnyObject{
    func leftButtonTaped()
    func rightButtonTaped()
}

class CustomAlertView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    weak var delegate: AlertDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func set(title: String, body: String, leftButttonTitle: String, rightButtonTitle: String){
        titleLabel.text = title
        bodyLabel.text = body
        leftButton.setTitle(leftButttonTitle, for: .normal)
        leftButton.layer.cornerRadius = 22
        rightButton.setTitle(rightButtonTitle, for: .normal)
        rightButton.layer.cornerRadius = 22
    }
    
    
    @IBAction func leftButtonTapped(_ sender: Any) {
        delegate?.leftButtonTaped()
    }
    
    @IBAction func rightButtonTapped(_ sender: Any) {
        delegate?.rightButtonTaped()
    }
    
}
