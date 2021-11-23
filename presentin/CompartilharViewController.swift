//
//  CompartilharViewController.swift
//  presentin
//
//  Created by Andre Vasconcelos on 09/11/21.
//

import UIKit

class CompartilharViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func verTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "na_modal") as! NaMedidaViewController
        present(vc, animated: true)
    }

}
