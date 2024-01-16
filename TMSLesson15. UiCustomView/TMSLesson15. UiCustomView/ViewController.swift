//
//  ViewController.swift
//  TMSLesson15. UiCustomView
//
//  Created by Mac on 16.01.24.
//

import UIKit

class ViewController: UIViewController {
    
    var customAlertView: CustomAlertView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customAlertView = Bundle.main.loadNibNamed("CustomAlertView", owner: self, options: nil)?.first as? CustomAlertView
        customAlertView.delegate = self
        
    }
    
    func setAlert() {
        view.addSubview(customAlertView!)
        UIView.animate(withDuration: 1.5,
                       delay: 0.0,
                       usingSpringWithDamping: 0.1, // значение на сколько пружинить
                       initialSpringVelocity: 0.0,
                       options: [],
                       animations: {
            self.customAlertView.center = CGPoint(x: self.view.center.x, y: 300)
        }, completion: nil)
        
        customAlertView.center = view.center
        customAlertView.set(title: "Hello", body: "My name is Darya", leftButttonTitle: "OK", rightButtonTitle: "NO")
        
    }
    
    @IBAction func showAlertButton(_ sender: Any) {
        setAlert()
    }
}

extension ViewController: AlertDelegate  {
    func leftButtonTaped() {
        self.customAlertView.removeFromSuperview()
        print("Confirm button tapped")
    }
    func rightButtonTaped() {
        self.customAlertView.removeFromSuperview()
        print("Cancel button tapped")
    }
}
