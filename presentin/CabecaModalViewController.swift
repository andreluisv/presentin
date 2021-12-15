//
//  CabecaModalViewController.swift
//  presentin
//
//  Created by Andre Vasconcelos on 08/11/21.
//

import UIKit

class CabecaModalViewController: UIViewController {

    @IBOutlet var circunferencia: UITextField!
    @IBOutlet var furosNaOrelha: UITextField!
    @IBOutlet var pescoco: UITextField!

    var delegate: infoDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        circunferencia.text = UserDefaults.standard.value(forKey: "circunferencia") as? String
        furosNaOrelha.text = UserDefaults.standard.value(forKey: "orelha") as? String
        pescoco.text = UserDefaults.standard.value(forKey: "pescoco") as? String
    }
    
    @IBAction func salvarTouch() {
        self.delegate.addCircunferencia(value: circunferencia.text)
        self.delegate.addOrelha(value: furosNaOrelha.text)
        self.delegate.addPescoco(value: pescoco.text)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
