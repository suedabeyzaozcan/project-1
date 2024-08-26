//
//  DetailViewController.swift
//  project-1
//
//  Created by Sueda Beyza Özcan on 26.08.2024.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "This image is \(selectedImage ?? "")"
        
        navigationItem.largeTitleDisplayMode = .never
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold), // Title font size and weight
            .foregroundColor: UIColor.systemRed // Title text color
        ]
        navigationController?.navigationBar.titleTextAttributes = attributes
        
        
        
        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
