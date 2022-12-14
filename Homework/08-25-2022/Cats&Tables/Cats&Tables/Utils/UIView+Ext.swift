//
//  UIView+Ext.swift
//  Cats&Tables
//
//  Created by Consultant on 8/25/22.
//

import UIKit
extension UIView {
    //helper to setup Autolayout constraints programmatically
    func pin(_ superView:UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}
