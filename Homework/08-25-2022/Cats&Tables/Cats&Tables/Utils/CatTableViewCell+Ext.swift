//
//  CatTableViewCell+Ext.swift
//  Cats&Tables
//
//  Created by Consultant on 8/25/22.
//

import UIKit

extension CatsListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cats.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: catCell) as! CatTableViewCell
        let cat = cats[indexPath.row]
        cell.set(cat)
        return cell
    }
    private func deleteCatAt(indexPath: IndexPath){
        let catId = cats[indexPath.row].id ?? 0
        cats.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .left)
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") { _, _ in
            // Delete cell
            self.deleteCatAt(indexPath: indexPath)
        }
        return [deleteAction]
    }
}

extension CatsListVC {
    func fetchData() -> [Cat] {
        let cats = [ Cat(id:1, image: Images.americanCurl, title: Names.americanCurl, description: Description.americanCurl),
                     Cat(id:2, image: Images.americanShortair, title: Names.americanShortair, description: Description.americanShortair),
                     Cat(id:3, image: Images.britshShorthair, title: Names.britshShorthair, description: Description.britshShorthair),
                     Cat(id:4, image: Images.cornishRex, title: Names.cornishRex, description: Description.cornishRex),
                     Cat(id:5, image: Images.devonRex, title: Names.devonRex, description: Description.devonRex),
                     Cat(id:6, image: Images.japaneseBobtail, title: Names.japaneseBobtail, description: Description.japaneseBobtail),
                     Cat(id:7, image: Images.maineCoon, title: Names.maineCoon, description: Description.maineCoon),
                     Cat(id:8, image: Images.norwegianForest, title: Names.norwegianForest, description: Description.norwegianForest),
                     Cat(id:9, image: Images.orientalShort, title: Names.orientalShort, description: Description.orientalShort),
                     Cat(id:11, image: Images.persian, title: Names.persian, description: Description.persian),
                     Cat(id:12, image: Images.scottishFold, title: Names.scottishFold, description: Description.scottishFold),
                     Cat(id:13, image: Images.siberian, title: Names.siberian, description: Description.siberian),
                     Cat(id:14, image: Images.turkishAngora, title: Names.turkishAngora, description: Description.turkishAngora)
        ]
        return cats
    }
}
