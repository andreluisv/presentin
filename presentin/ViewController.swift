//
//  ViewController.swift
//  presentin
//
//  Created by Andre Vasconcelos on 08/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func cabecaTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "cabeca_modal") as! CabecaModalViewController
        present(vc, animated: true)
    }
    
    @IBAction func torsoTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "torso_modal") as! TorsoModalViewController
        present(vc, animated: true)
    }
    
    @IBAction func pernaTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "perna_modal") as! PernaModalViewController
        present(vc, animated: true)
    }
    
    @IBAction func pesTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "pes_modal") as! PesModalViewController
        present(vc, animated: true)
    }
    
    @IBAction func compartilharTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "begin_match") as! InicioMatchViewController
        present(vc, animated: true)
    }
}
