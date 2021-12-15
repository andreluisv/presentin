//
//  SelectMatchViewController.swift
//  presentin
//
//  Created by Daniel Bastos on 07/12/21.
//

import UIKit

class SelectMatchViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var selectMatchCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectMatchCollectionView.dataSource = self
        selectMatchCollectionView.delegate = self
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
        print(buttonLabel)
        collectionViewCell.buttonLabel.setTitle(buttonLabel, for: .normal)
        return collectionViewCell
    }
    
    @IBAction func nextTouch() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "na_modal") as! NaMedidaViewController
        present(vc, animated: true)
    }

}
