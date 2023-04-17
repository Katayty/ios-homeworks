//
//  FeedViewController.swift
//  Navigation
//
//  Created by Dzam Kataev on 11/04/2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    private lazy var openProfileButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open Profile", for: .normal)
        button.addTarget(self, action: #selector(FeedViewController.openProfileButtonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
        setupConstraints()
    }
    
    @objc private func openProfileButtonTapped(_ sender: UIButton) {
        let profileViewController = ProfileViewController()
        navigationController?.pushViewController(profileViewController, animated: true)
    }
    
    private func setupViews() {
        view.addSubview(openProfileButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            openProfileButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            openProfileButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}
