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
    
    @IBAction func compartilharTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "compartilhar_modal") as! CompartilharViewController
        present(vc, animated: true)
    }
}
