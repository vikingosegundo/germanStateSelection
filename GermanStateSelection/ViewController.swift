//
//  ViewController.swift
//  GermanStateSelection
//
//  Created by manuel on 13/05/2019.
//  Copyright © 2019 tweede viking. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ndsTapped(_ sender: Any) {
        selectLabel.text = "Niedersachsen"
    }

    @IBAction func hessenTapped(_ sender: Any) {
        selectLabel.text = "Hessen"
    }

    @IBAction func nrwTapped(_ sender: Any) {
        selectLabel.text = "Nordrhein-Westfahlen"

    }

    @IBAction func saanTapped(_ sender: Any) {
        selectLabel.text = "Sachsen-Anhalt"

    }
}

