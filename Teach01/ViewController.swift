//
//  ViewController.swift
//  Teach01
//
//  Created by Phuket Makers on 7/5/2561 BE.
//  Copyright © 2561 Phuket Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var buttom = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let card: UIButton = UIButton()
        card.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(card)
        
//        card.isUserInteractionEnabled = true
        
//        let gesture = UITapGestureRecognizer.init(target: self, action: #selector(click(_:)))
//        card.addGestureRecognizer(gesture)
        
        card.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 10).isActive = true
        
        card.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        
        card.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        card.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        card.layer.cornerRadius = 10
        
        card.backgroundColor = .blue
        
        card.addTarget(self, action: #selector(click(_:)), for: .touchUpInside)
        
        
        //For add image to card
//        card.setImage(<#T##image: UIImage?##UIImage?#>, for: <#T##UIControlState#>)
        
    }
    
    @objc func click(_ sender : UIButton) {
        
        let vc = DetailViewController()
        vc.detail = "sdad"
        present(vc, animated: true, completion: nil)
        
    }

}



