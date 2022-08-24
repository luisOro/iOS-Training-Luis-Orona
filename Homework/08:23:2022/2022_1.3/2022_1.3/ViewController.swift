//
//  ViewController.swift
//  2022_1.3
//
//  Created by Consultant on 8/23/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 450, width: 130, height: 30)
        label.backgroundColor = .lightGray
        label.textColor = .white
        label.text = "1.7 Click Label"
        // Enable User Interaction
        label.isUserInteractionEnabled = true
        // Create and add the Gesture Recognizer
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelClicked(_:)))
        label.addGestureRecognizer(guestureRecognizer)
        view.addSubview(label)
    }
    @IBAction func labelClicked(_ sender: Any) {
        print("UILabel clicked")
    }


}

