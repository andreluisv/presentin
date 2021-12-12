//
//  TorsoModalViewController.swift
//  presentin
//
//  Created by Andre Vasconcelos on 23/11/21.
//

import UIKit

class TorsoModalViewController: UIViewController {

    @IBOutlet var busto: UITextField!
    @IBOutlet var cintura: UITextField!
    @IBOutlet var quadril: UITextField!

    var delegate: infoDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround() 
    }
    
    @IBAction func salvarTouch() {
        delegate.addBusto(value: busto.text)
        delegate.addCintura(value: cintura.text)
        delegate.addQuadril(value: quadril.text)
        
        self.dismiss(animated: true, completion: nil)
    }

}
