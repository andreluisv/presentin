//
//  SelectMatchViewController.swift
//  presentin
//
//  Created by Daniel Bastos on 07/12/21.
//

import UIKit

class SelectMatchViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var selectMatchCollectionView: UICollectionView!
    @IBOutlet weak var medida1Label: UILabel!
    @IBOutlet weak var medida1Input: UITextField!
    @IBOutlet weak var medida2Label: UILabel!
    @IBOutlet weak var medida2Input: UITextField!
    @IBOutlet weak var medida3Label: UILabel!
    @IBOutlet weak var medida3Input: UITextField!
    
    var user: User? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectMatchCollectionView.dataSource = self
        selectMatchCollectionView.delegate = self
        resetInputs()
        if(user != nil){
            print(user!.name)
        }
    }
    
    func resetInputs() {
        medida1Label.alpha = 0
        medida2Label.alpha = 0
        medida3Label.alpha = 0
        medida1Input.alpha = 0
        medida2Input.alpha = 0
        medida3Input.alpha = 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SelectMatchModel.matchButtons.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = selectMatchCollectionView.dequeueReusableCell(withReuseIdentifier: "viewCell", for: indexPath) as! SelectMatchCollectionViewCell
        let buttonLabel = SelectMatchModel.matchButtons[indexPath.row].label
        collectionViewCell.buttonLabel.setTitle(buttonLabel, for: .normal)
        return collectionViewCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let model = SelectMatchModel.matchButtons[indexPath.row]
        resetInputs()
        var i = 0
        for btn in model.fields {
            if (i==0){
                medida1Label.text = btn
                medida1Label.alpha = 1
                medida1Input.alpha = 1
            }else if (i==1){
                medida2Label.text = btn
                medida2Label.alpha = 1
                medida2Input.alpha = 1
            }else {
                medida3Label.text = btn
                medida3Label.alpha = 1
                medida3Input.alpha = 1
            }
            i += 1
        }
    }
    
    @IBAction func nextTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "na_modal") as! NaMedidaViewController
        present(vc, animated: true)
    }

}
