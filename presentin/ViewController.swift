//
//  ViewController.swift
//  presentin
//
//  Created by Andre Vasconcelos on 08/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var delegate: infoDelegate!
    @IBOutlet weak var userImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = MeasureModel().self
        let users = [
            SelectMatchFactory.createDaniel(),
            SelectMatchFactory.createRods(),
            SelectMatchFactory.createAndre(),
            SelectMatchFactory.createLoureiro(),
        ]
        userImage.image = UIImage(named: users[Int.random(in: 0..<4)].username)
        userImage.layer.cornerRadius = 25
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
    
    @IBAction func shareText() {
        // text to share
       let text = "Olá amigo, use esse link presentin:// para comprar o presente certo para mim. :)"
       let text2 = "Basta clicar em \"Match\" e buscar pelo meu username: \"andrevas\""
       
       // set up activity view controller
       let textToShare = [ text, text2 ]
       let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
       activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
       
       // exclude some activity types from the list (optional)
//       activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]
       
       // present the view controller
       self.present(activityViewController, animated: true, completion: nil)
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
