//
//  ViewController.swift
//  GermanStateSelection
//
//  Created by manuel on 13/05/2019.
//  Copyright © 2019 tweede viking. All rights reserved.
//

import UIKit

class ViewController: UIViewController, StateSelectionViewDelegate{

    var stateSelectionView: StateSelectionView! { didSet { setup() } }
    var selectedLabel = UILabel()

    func setup() {
        view.translatesAutoresizingMaskIntoConstraints = false
        stateSelectionView.translatesAutoresizingMaskIntoConstraints = false
        selectedLabel.translatesAutoresizingMaskIntoConstraints = false
        selectedLabel.textAlignment = .center
        
        view.backgroundColor = .white
        view.addSubview(stateSelectionView)
        view.addSubview(selectedLabel)

        NSLayoutConstraint.activate([
            stateSelectionView.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor),
            stateSelectionView.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor),
            stateSelectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stateSelectionView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ]
        )

        NSLayoutConstraint.activate([
            stateSelectionView.widthAnchor.constraint(equalTo: view.widthAnchor),
            stateSelectionView.heightAnchor.constraint(equalTo: view.heightAnchor)
            ].map{
                $0.priority = UILayoutPriority(900)
                return $0
            }
        )


        NSLayoutConstraint.activate([
            selectedLabel.heightAnchor.constraint(equalToConstant: 24),
            selectedLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            selectedLabel.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            selectedLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ]
        )



        stateSelectionView.delegate = self
    }

    func didSelect(stateName: String, on: StateSelectionView) {
        selectedLabel.text = stateName

    }

}

