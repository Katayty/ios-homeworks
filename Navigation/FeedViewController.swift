//
//  FeedViewController.swift
//  Navigation
//
//  Created by Dzam Kataev on 11/04/2023.
//

import Foundation
import UIKit

class FeedViewController: UIViewController {

    let post = Post(title: "Sample Post")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Feed"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Show Post", style: .plain, target: self, action: #selector(showPost))
    }

    @objc func showPost() {
        let postVC = PostViewController()
        postVC.post = post
        navigationController?.pushViewController(postVC, animated: true)
    }
}
