//
//  DetailViewController.swift
//  Teach01
//
//  Created by Phuket Makers on 7/5/2561 BE.
//  Copyright © 2561 Phuket Makers. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var detail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backButton)
        backButton.backgroundColor = .red
        backButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        backButton.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 0).isActive = true
        backButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        backButton.addTarget(self, action: #selector(back), for: .touchUpInside)
        backButton.setTitle(detail, for: .normal)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func back() {
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
