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
    @IBOutlet weak var userImage: UIImageView!

    var user : User!

    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isEnabled = false
        nextButton.alpha = 0.5
        nameField.alpha = 0
        userImage.alpha = 0
        userImage.layer.cornerRadius = 45
    }
    
    @IBAction func textChanged() {
        if (textField.text == nil){
            nextButton.isEnabled = false
            nextButton.alpha = 0.5
            nameField.alpha = 0
            userImage.alpha = 0
        }else {
            let usr = SelectMatchModel().findUser(username: textField.text!)
            user = usr
            if (usr.name=="Loading"){
                nextButton.isEnabled = false
                nextButton.alpha = 0.5
                nameField.alpha = 0
                userImage.alpha = 0
            }else{
                userImage.image = UIImage(named: usr.username)
                nextButton.isEnabled = true
                nextButton.alpha = 1
                nameField.text = usr.name
                nameField.alpha = 1
                userImage.alpha = 1
            }

        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField.text == nil){
            nextButton.isEnabled = false
            nextButton.alpha = 0.5
            nameField.alpha = 0
            userImage.alpha = 0
        }else {
            let usr = SelectMatchModel().findUser(username: textField.text!)
            user = usr
            if (usr.name=="Loading"){
                nextButton.isEnabled = false
                nextButton.alpha = 0.5
                nameField.alpha = 0
                userImage.alpha = 0
            }else{
                userImage.image = UIImage(named: usr.username)
                nextButton.isEnabled = true
                nextButton.alpha = 1
                nameField.text = usr.name
                nameField.alpha = 1
                userImage.alpha = 1
            }
            
        }
    }
    
    @IBAction func nextTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "select_match") as! SelectMatchViewController
        vc.user = user
        present(vc, animated: true)
    }
}
