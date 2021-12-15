//
//  ViewController.swift
//  presentin
//
//  Created by Andre Vasconcelos on 08/11/21.
//

import UIKit

class ViewController: UIViewController, infoDelegate {
    func addCircunferencia(value: String?) {
        if value != nil {
            print(value!)
            UserDefaults.standard.set(value!, forKey: "circunferencia")
        }else {
            print("null value added")
        }
    }
    
    func addOrelha(value: String?) {
        if value != nil {
            print(value!)
            UserDefaults.standard.set(value!, forKey: "orelha")
        }else {
            print("null value added")
        }
    }
    
    func addPescoco(value: String?) {
        if value != nil {
            print(value!)
            UserDefaults.standard.set(value!, forKey: "pescoco")
        }else {
            print("null value added")
        }
    }
    
    func addBusto(value: String?) {
        if value != nil {
            print(value!)
            UserDefaults.standard.set(value!, forKey: "busto")
        }else {
            print("null value added")
        }
    }
    
    func addCintura(value: String?) {
        if value != nil {
            print(value!)
            UserDefaults.standard.set(value!, forKey: "cintura")
        }else {
            print("null value added")
        }
    }
    
    func addQuadril(value: String?) {
        if value != nil {
            print(value!)
            UserDefaults.standard.set(value!, forKey: "quadril")
        }else {
            print("null value added")
        }
    }
    
    func addCoxa(value: String?) {
        if value != nil {
            print(value!)
            UserDefaults.standard.set(value!, forKey: "coxa")
        }else {
            print("null value added")
        }
    }
    
    func addPanturrilha(value: String?) {
        if value != nil {
            print(value!)
            UserDefaults.standard.set(value!, forKey: "panturrilha")
        }else {
            print("null value added")
        }
    }
    
    func addBainha(value: String?) {
        if value != nil {
            print(value!)
            UserDefaults.standard.set(value!, forKey: "bainha")
        }else {
            print("null value added")
        }
    }
    
    func addPe(value: String?) {
        if value != nil {
            print(value!)
            UserDefaults.standard.set(value!, forKey: "pe")
        }else {
            print("null value added")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cabecaTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "cabeca_modal") as! CabecaModalViewController
        vc.delegate = self
        present(vc, animated: true)
    }
    
    @IBAction func torsoTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "torso_modal") as! TorsoModalViewController
        vc.delegate = self
        present(vc, animated: true)
    }
    
    @IBAction func pernaTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "perna_modal") as! PernaModalViewController
        vc.delegate = self
        present(vc, animated: true)
    }
    
    @IBAction func pesTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "pes_modal") as! PesModalViewController
        vc.delegate = self
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

protocol infoDelegate {
    func addCircunferencia(value : String?)
    func addOrelha(value : String?)
    func addPescoco(value : String?)
    func addBusto(value : String?)
    func addCintura(value : String?)
    func addQuadril(value : String?)
    func addCoxa(value : String?)
    func addPanturrilha(value : String?)
    func addBainha(value : String?)
    func addPe(value : String?)
}
