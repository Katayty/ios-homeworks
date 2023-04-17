//
//  InfoViewController.swift
//  Navigation
//
//  Created by Dzam Kataev on 11/04/2023.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {
    
    private lazy var showAlertButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show Alert", for: .normal)
        button.addTarget(self, action: #selector(showAlertButtonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc private func showAlertButtonTapped(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("OK button tapped")
        }
        alertController.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("Cancel button tapped")
        }
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(showAlertButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            showAlertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showAlertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}
