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
    
    var btnLabel: String! = ""
    
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
        collectionViewCell.buttonLabel.text = buttonLabel
        return collectionViewCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let model = SelectMatchModel.matchButtons[indexPath.row]
        btnLabel = model.label
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
        vc.match = 100
        if (btnLabel == "Cabeça"){
            if (medida1Input.text != nil){
                let medida = Double(medida1Input.text!) ?? 1
                let salvo = Double(user?.measures.cabeca.circunferencia ?? 1)
                vc.match = min(Int(min(medida, salvo)/max(medida, salvo) * 100.0), vc.match)
            }
            if (medida2Input.text != nil){
                let medida = Double(medida2Input.text!) ?? 1
                let salvo = Double(user?.measures.cabeca.furosOrelha ?? 1)
                vc.match = min(Int(min(medida, salvo)/max(medida, salvo, 1) * 100.0), vc.match)
            }
            if (medida1Input.text != nil){
                let medida = Double(medida1Input.text!) ?? 1
                let salvo = Double(user?.measures.cabeca.pescoco ?? 1)
                vc.match = min(Int(min(medida, salvo)/max(medida, salvo) * 100.0), vc.match)
            }
        }else if (btnLabel == "Torso"){
            if (medida1Input.text != nil){
                let medida = Double(medida1Input.text!) ?? 1
                let salvo = Double(user?.measures.torso.busto ?? 1)
                vc.match = min(Int(min(medida, salvo)/max(medida, salvo) * 100.0), vc.match)
            }
            if (medida2Input.text != nil){
                let medida = Double(medida2Input.text!) ?? 1
                let salvo = Double(user?.measures.torso.cintura ?? 1)
                vc.match = min(Int(min(medida, salvo)/max(medida, salvo) * 100.0), vc.match)
            }
            if (medida1Input.text != nil){
                let medida = Double(medida1Input.text!) ?? 1
                let salvo = Double(user?.measures.torso.quadril ?? 1)
                vc.match = min(Int(min(medida, salvo)/max(medida, salvo) * 100.0), vc.match)
            }
        }else if (btnLabel == "Pernas"){
            if (medida1Input.text != nil){
                let medida = Double(medida1Input.text!) ?? 1
                let salvo = Double(user?.measures.pernas.coxa ?? 1)
                vc.match = min(Int(min(medida, salvo)/max(medida, salvo) * 100.0), vc.match)
            }
            if (medida2Input.text != nil){
                let medida = Double(medida2Input.text!) ?? 1
                let salvo = Double(user?.measures.pernas.panturrilha ?? 1)
                vc.match = min(Int(min(medida, salvo)/max(medida, salvo) * 100.0), vc.match)
            }
            if (medida1Input.text != nil){
                let medida = Double(medida1Input.text!) ?? 1
                let salvo = Double(user?.measures.pernas.bainha ?? 1)
                vc.match = min(Int(min(medida, salvo)/max(medida, salvo) * 100.0), vc.match)
            }
        }else if (btnLabel == "Pés"){
            if (medida1Input.text != nil){
                let medida = Double(medida1Input.text!) ?? 1
                let salvo = Double(user?.measures.pes.comprimento ?? 1)
                vc.match = min(Int(min(medida, salvo)/max(medida, salvo) * 100.0), vc.match)
            }
        }
        present(vc, animated: true)
    }

}
