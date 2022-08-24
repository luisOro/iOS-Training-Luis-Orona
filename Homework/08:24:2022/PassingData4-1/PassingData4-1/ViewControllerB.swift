//
//  ViewControllerB.swift
//  PassingData4-1
//
//  Created by Consultant on 8/24/22.
//

import UIKit

class ViewControllerB: UIViewController {
    @IBOutlet weak var helloUILabel: UILabel!
    @IBOutlet weak var byeUILabel: UILabel!
    @IBOutlet weak var welcomeUILabel: UILabel!
    
    @IBAction func spanishButtonAction(_ sender: Any) {
        onButtonTap()
    }
    var helloB = "", byeB = "", welcomeB = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        helloUILabel?.text = helloB
        byeUILabel?.text = byeB
        welcomeUILabel?.text = welcomeB
        // Do any additional setup after loading the view.
    }
    func onButtonTap(){
        let vc =  storyboard?.instantiateViewController(withIdentifier: "viewControllerA") as! ViewController
        vc.hello = "Hola"
        vc.bye = "Adios"
        vc.welcome = "Bienvenido"
        navigationController?.pushViewController(vc, animated: true)
        //present(vc, animated: true, completion: nil)
    }

}
