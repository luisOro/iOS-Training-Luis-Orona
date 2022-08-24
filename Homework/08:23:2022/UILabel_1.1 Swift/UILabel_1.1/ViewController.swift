//
//  ViewController.swift
//  UILabel_1.1
//
//  Created by Consultant on 8/23/22.
//

import UIKit

class ViewController: UIViewController {

    var myLabel = DateLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        let today = Date.now
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .short
        myLabel = DateLabel(frame: CGRect(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2, width: 100, height: 20))
        myLabel.center.x =  self.view.center.x
        myLabel.center.y =  self.view.center.y
        print("date: \(formatter1.string(from: today))")
        myLabel.text = formatter1.string(from: today)
        self.view.addSubview(myLabel)
     }


}
class DateLabel: UILabel {

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
