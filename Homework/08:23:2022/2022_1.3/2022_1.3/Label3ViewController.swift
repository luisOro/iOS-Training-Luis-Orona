//
//  Label3ViewController.swift
//  2022_1.3
//
//  Created by Consultant on 8/23/22.
//

import UIKit

class Label3ViewController: UIViewController {

    var myLabel1 = DateLabel()
    var myLabel2 = DateLabel()
    var myLabel3 = DateLabel()
    var myLabel4 = DateLabel()
    //var myVStackHorizontal: UIStackView = UIStackView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        myLabel1 = DateLabel(frame: CGRect(x: 10,y: 80,width: 50,height: 50))
        //myLabel1.center.x =  self.view.center.x
        //myLabel1.center.y =  self.view.center.y
        myLabel1.text = "Hello 1"
        
        myLabel2 = DateLabel(frame: CGRect(x: 65,y: 80,width: 50,height: 50))
        //myLabel2.center.x =  self.view.center.x
        //myLabel2.center.y =  self.view.center.y
        myLabel2.text = "Hello 2"
        
        myLabel3 = DateLabel(frame: CGRect(x: 120,y: 80,width: 50,height: 50))
        //myLabel3.center.x =  self.view.center.x
        //myLabel3.center.y =  self.view.center.y
        myLabel3.text = "Hello 3"
        
        myLabel4 = DateLabel(frame: CGRect(x: 175,y: 80,width: 50,height: 50))
        //myLabel4.center.x =  self.view.center.x
        //myLabel4.center.y =  self.view.center.y
        myLabel4.text = "Hello 4"
        
        /*
        myVStackHorizontal = UIStackView(frame: CGRect(x: 50,y: 100,width: 300,height: 100))
        myVStackHorizontal.backgroundColor = .lightGray
        myVStackHorizontal.addArrangedSubview(myLabel1)
        myVStackHorizontal.addArrangedSubview(myLabel2)
        myVStackHorizontal.addArrangedSubview(myLabel3)
        myVStackHorizontal.addArrangedSubview(myLabel4)
        */
        self.view.addSubview(myLabel1)
        self.view.addSubview(myLabel2)
        self.view.addSubview(myLabel3)
        self.view.addSubview(myLabel4)
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
