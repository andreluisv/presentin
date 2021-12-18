//
//  NaMedidaViewController.swift
//  presentin
//
//  Created by Andre Vasconcelos on 09/11/21.
//

import UIKit

class NaMedidaViewController: UIViewController {
    
    var match : Bool! = false
    @IBOutlet var checkImage: UIImageView!
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        if(match) {
            label.text = "Na medida"
            checkImage.image = UIImage(systemName:"checkmark")
        }else {
            label.text = "Ops! Essa não é a medida certa"
            checkImage.image = UIImage(systemName:"exclamationmark")
        }
        
        // Do any additional setup after loading the view.
        print(match)
    }
    
    @IBAction func nextTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "main_view_controller") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
