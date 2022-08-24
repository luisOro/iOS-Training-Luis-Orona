//
//  Label5ViewController.swift
//  2022_1.3
//
//  Created by Consultant on 8/23/22.
//

import UIKit

class Label6ViewController: UIViewController {
    var myVStackHorizontal: UIStackView = UIStackView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        // Do any additional setup after loading the view.
        myVStackHorizontal = UIStackView(frame: CGRect(x: 50,y: 100,width: 300,height: 100))
        myVStackHorizontal.backgroundColor = .lightGray
        for i in 1..<5 {
            var myLabel1 = DateLabel2()
            myLabel1 = DateLabel2(frame: CGRect(x: 10,y: 80,width: 50,height: 50))
            myLabel1.center.x =  self.view.center.x
            myLabel1.center.y =  self.view.center.y
            myLabel1.text = "Hello \(i)"
            myVStackHorizontal.addArrangedSubview(myLabel1)
        }
        self.view.addSubview(myVStackHorizontal)
    }
}
class DateLabel2: UILabel {

  required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      initializeLabel()
  }

  override init(frame: CGRect) {
      super.init(frame: frame)
      initializeLabel()
  }

  func initializeLabel() {
      self.textAlignment = .center
      self.font = UIFont(name: "Verdana", size: 18)
      self.numberOfLines = 2
      self.backgroundColor = .clear
      self.textColor = .red
      self.shadowColor = .darkGray
  }

}

