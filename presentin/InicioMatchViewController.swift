//
//  InicioMatch.swift
//  presentin
//
//  Created by Daniel Bastos on 06/12/21.
//

import UIKit

class InicioMatchViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
//        nextButton.isEnabled = false
//        nextButton.alpha = 0.5
    }
    
    @IBAction func nextTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "select_match") as! SelectMatchViewController
        present(vc, animated: true)
    }
}
