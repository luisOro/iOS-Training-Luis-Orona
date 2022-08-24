//
//  ViewControllerC.swift
//  PassingData4-1
//
//  Created by Consultant on 8/24/22.
//

import UIKit

class ViewControllerC: UIViewController {
    @IBOutlet weak var labelUILabel: UILabel!
    var message: String = "."
    override func viewDidLoad() {
        super.viewDidLoad()
        labelUILabel?.text = message
        // Do any additional setup after loading the view.
    }
    

}
