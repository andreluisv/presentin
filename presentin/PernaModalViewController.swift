//
//  PernaModalViewController.swift
//  presentin
//
//  Created by Andre Vasconcelos on 23/11/21.
//

import UIKit

class PernaModalViewController: UIViewController {

    @IBOutlet var coxa: UITextField!
    @IBOutlet var panturrilha: UITextField!
    @IBOutlet var bainha: UITextField!

    var delegate: infoDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        coxa.text = delegate.getCoxa()
        panturrilha.text = delegate.getPanturrilha()
        bainha.text = delegate.getBainha()
    }
    
    @IBAction func salvarTouch() {
        delegate.addCoxa(value: coxa.text)
        delegate.addPanturrilha(value: panturrilha.text)
        delegate.addBainha(value: bainha.text)
        self.dismiss(animated: true, completion: nil)
    }

}
