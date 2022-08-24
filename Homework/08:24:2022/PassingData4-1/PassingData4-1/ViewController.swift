//
//  ViewController.swift
//  PassingData4-1
//
//  Created by Consultant on 8/24/22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - UI
    
    @IBOutlet weak var helloUILabel: UILabel!
    @IBOutlet weak var byeUILabel: UILabel!
    @IBOutlet weak var welcomeUILabel: UILabel!
    var hello = "Salut", bye = "Au revoir", welcome = "Bienvenue"
    @IBAction func englishButtonAction(_ sender: Any) {
        onButtonTap()
    }
    @IBAction func segueButtonAction(_ sender: Any) {
        onSegueTap()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segueDestination = segue.destination as! ViewControllerC
        segueDestination.message = "Hello World!!!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        helloUILabel?.text = hello
        byeUILabel?.text = bye
        welcomeUILabel?.text = welcome
        // Do any additional setup after loading the view.
    }
    func onSegueTap(){
        self.performSegue(withIdentifier: "showDetailingSegue", sender: self)
    }
    func onButtonTap(){
        let vc =  storyboard?.instantiateViewController(withIdentifier: "viewControllerB") as! ViewControllerB
        vc.helloB = "Hello"
        vc.byeB = "Bye"
        vc.welcomeB = "Welcome"
        navigationController?.pushViewController(vc, animated: true)
        //present(vc, animated: true, completion: nil)
    }

}

