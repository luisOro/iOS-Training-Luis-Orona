//
//  ViewController.swift
//  24SecondExercise
//
//  Created by Consultant on 8/24/22.
//

import UIKit

class ViewController: UIViewController, DataEnteredDelegate {
    // MARK: - UI
    @IBOutlet weak var labelUILabel: UILabel!
    let  vc = TableViewController()
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondViewController"  {
            let secondViewController: TableViewController = segue.destination as! TableViewController
            secondViewController.delegate = self
        }
    }

    // required method of our custom DataEnteredDelegate protocol
    func userDidEnterInformation(info: String) {
        self.labelUILabel?.text = info.capitalized
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        //performSegue(withIdentifier: "showSecondViewController", sender: nil)
        //vc.groceryList = ["bananas", "pototoes", "bread", "juicy", "tortillas","peppers", "beans", "cokes"]
        //navigationController?.pushViewController(vc, animated: true)
    }
    
}

