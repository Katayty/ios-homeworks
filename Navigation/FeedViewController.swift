//
//  FeedViewController.swift
//  Navigation
//
//  Created by Dzam Kataev on 11/04/2023.
//

import UIKit

class FeedViewController: UIViewController {
    
    private lazy var openPostButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open Post", for: .normal)
        button.addTarget(self, action: #selector(openPostButtonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc private func openPostButtonTapped(_ sender: UIButton) {
        let post = Post(title: "Interesting Post")
        let postViewController = PostViewController(post: post)
        navigationController?.pushViewController(postViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(openPostButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            openPostButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            openPostButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
}
