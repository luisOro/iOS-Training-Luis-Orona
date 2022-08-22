//
//  RoundButton.swift
//  calcapp
//
//  Created by Consultant on 8/19/22.
//

import UIKit

class RoundButton: UIButton {

    @IBInspectable var roundButton: Bool = false {
        didSet {
            if roundButton {
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    override func prepareForInterfaceBuilder(){
        if roundButton {
            layer.cornerRadius =  frame.height / 2
        }
    }

}
