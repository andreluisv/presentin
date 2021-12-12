//
//  PesModalViewController.swift
//  presentin
//
//  Created by Andre Vasconcelos on 23/11/21.
//

import UIKit

class PesModalViewController: UIViewController {

    @IBOutlet var comprimento: UITextField!

    var delegate: infoDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround() 
    }
    
    @IBAction func salvarTouch() {
        delegate.addPe(value: comprimento.text)
        self.dismiss(animated: true, completion: nil)
    }

}
