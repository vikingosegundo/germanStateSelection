//
//  StateSelectionView.swift
//  GermanStateSelection
//
//  Created by manuel on 15/05/2019.
//  Copyright © 2019 tweede viking. All rights reserved.
//

import UIKit

protocol StateSelectionViewDelegate: class {
    func didSelect(stateName:String, on: StateSelectionView)
}

class StateSelectionView: UIView {

    @IBOutlet weak var ndsButton: UIButton!
    @IBOutlet weak var nrwButton: UIButton!
    @IBOutlet weak var hessenButton: UIButton!
    @IBOutlet weak var sachsenAnhaltButton: UIButton!
    weak var delegate: StateSelectionViewDelegate?
    @IBAction func stateTapped(_ sender: UIButton) {
        switch sender {
        case ndsButton:
            delegate?.didSelect(stateName: "Niedersachen", on: self)
        case nrwButton:
            delegate?.didSelect(stateName: "NRW", on: self)
        case hessenButton:
            delegate?.didSelect(stateName: "Hessen", on: self)
        case sachsenAnhaltButton:
            delegate?.didSelect(stateName: "Sachen-Anhalt", on: self)
        default:
            break
        }
    }

}
