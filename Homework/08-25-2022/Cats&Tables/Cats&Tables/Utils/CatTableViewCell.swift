//
//  CatTableViewCell.swift
//  Cats&Tables
//
//  Created by Consultant on 8/25/22.
//

import UIKit

class CatTableViewCell: UITableViewCell {
    var catImageView = UIImageView()
    var catTitle = UILabel()
    var catDescription = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier:String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //call functionss to setup cell
        addSubview(catImageView)
        addSubview(catTitle)
        addSubview(catDescription)
        configureImageView()
        configureTitleLabel()
        configureDescriptionLabel()
        setImageConstraints()
        setTitleLabelContraints()
        setDescriptionLabelContraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // passing through a cat and setting image to specific cat passed in array
    func set(_ cat: Cat) {
        catImageView.image = cat.image
        catTitle.text = cat.title
        catDescription.text = cat.description
    }
    
    func configureImageView() {
        catImageView.layer.cornerRadius = 10
        catImageView.clipsToBounds = true
    }
    
    func configureTitleLabel() {
        catTitle.numberOfLines = 0
        catTitle.adjustsFontSizeToFitWidth = true
        catTitle.textColor = .red
    }
    
    func configureDescriptionLabel() {
        catDescription.numberOfLines = 3
        catDescription.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        catImageView.translatesAutoresizingMaskIntoConstraints = false
        catImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        catImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        catImageView.widthAnchor.constraint(equalTo: catImageView.heightAnchor, multiplier: 16/9).isActive = true
        catImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    func setTitleLabelContraints() {
        catTitle.translatesAutoresizingMaskIntoConstraints = false
        catTitle.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -30).isActive = true
        catTitle.leadingAnchor.constraint(equalTo: catImageView.trailingAnchor, constant: 20).isActive = true
        catTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        catTitle.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
    
    func setDescriptionLabelContraints() {
        catDescription.translatesAutoresizingMaskIntoConstraints = false
        catDescription.centerYAnchor.constraint(equalTo: catTitle.centerYAnchor, constant: 40).isActive = true
        catDescription.leadingAnchor.constraint(equalTo: catTitle.trailingAnchor, constant: -190).isActive = true
        catDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        catDescription.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
}
