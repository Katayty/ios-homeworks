//
//  InfoViewController.swift
//  Navigation
//
//  Created by Dzam Kataev on 11/04/2023.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Info"

        let closeButton = UIButton(type: .system)
        closeButton.setTitle("Show Alert", for: .normal)
        closeButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(closeButton)

        NSLayoutConstraint.activate([
            closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            closeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func showAlert() {
        let alertController = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            print("OK button pressed")
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            print("Cancel button pressed")
        }))

        present(alertController, animated: true, completion: nil)
    }
}
