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
        circunferencia.text = delegate.getCircunferencia()
        furosNaOrelha.text = delegate.getOrelha()
        pescoco.text = delegate.getPescoco()
    }
    
    @IBAction func salvarTouch() {
        self.delegate.addCircunferencia(value: circunferencia.text)
        self.delegate.addOrelha(value: furosNaOrelha.text)
        self.delegate.addPescoco(value: pescoco.text)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
