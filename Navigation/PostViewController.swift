//
//  PostViewController.swift
//  Navigation
//
//  Created by Dzam Kataev on 11/04/2023.
//

import Foundation
import UIKit

class PostViewController: UIViewController {

    private let post: Post
    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = post.title
        view.backgroundColor = .white
        
        let infoButton = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(infoButtonTapped))
        navigationItem.rightBarButtonItem = infoButton
    }
    
    @objc private func infoButtonTapped() {
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true, completion: nil)
    }
}
