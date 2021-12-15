//
//  ViewController.swift
//  presentin
//
//  Created by Andre Vasconcelos on 08/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var delegate: infoDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = MeasureModel().self
    }
    
    @IBAction func cabecaTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "cabeca_modal") as! CabecaModalViewController
        vc.delegate = delegate
        present(vc, animated: true)
    }
    
    @IBAction func torsoTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "torso_modal") as! TorsoModalViewController
        vc.delegate = delegate
        present(vc, animated: true)
    }
    
    @IBAction func pernaTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "perna_modal") as! PernaModalViewController
        vc.delegate = delegate
        present(vc, animated: true)
    }
    
    @IBAction func pesTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "pes_modal") as! PesModalViewController
        vc.delegate = delegate
        present(vc, animated: true)
    }
    
    @IBAction func compartilharTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "begin_match") as! InicioMatchViewController
        present(vc, animated: true)
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
