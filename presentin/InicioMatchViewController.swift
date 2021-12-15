//
//  InicioMatch.swift
//  presentin
//
//  Created by Daniel Bastos on 06/12/21.
//

import UIKit

class InicioMatchViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var nameField: UILabel!
    
    var user : User!

    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isEnabled = false
        nextButton.alpha = 0.5
    }
    
    @IBAction func textChanged() {
        if (textField.text == nil){
            nextButton.isEnabled = false
            nextButton.alpha = 0.5
        }else {
            let usr = SelectMatchModel().findUser(username: textField.text!)
            user = usr
            if (usr.name=="Loading"){
                nextButton.isEnabled = false
                nextButton.alpha = 0.5
            }else{
                nextButton.isEnabled = true
                nextButton.alpha = 1
                nameField.text = usr.name
            }

        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField.text == nil){
            nextButton.isEnabled = false
            nextButton.alpha = 0.5
        }else {
            let usr = SelectMatchModel().findUser(username: textField.text!)
            user = usr
            if (usr.name=="Loading"){
                nextButton.isEnabled = false
                nextButton.alpha = 0.5
            }else{
                nextButton.isEnabled = true
                nextButton.alpha = 1
            }
            
        }
    }
    
    @IBAction func nextTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "select_match") as! SelectMatchViewController
        vc.user = user
        present(vc, animated: true)
    }
}
