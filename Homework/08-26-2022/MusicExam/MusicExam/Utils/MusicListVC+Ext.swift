//
//  MusicListVC+Ext.swift
//  MusicExam
//
//  Created by Consultant on 8/26/22.
//

import UIKit

extension MusicListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: artistCell,
                                                 for: indexPath)
        
        if let newCell = cell as? BaseTableViewCell {
            newCell.setupCell(image: artists[indexPath.row].image, title: artists[indexPath.row].title, description: artists[indexPath.row].description )
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //var vc =  ArtistViewController()
        
        print("La celda #\(indexPath.row) fué seleccionada.")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "artistViewController") as! ArtistViewController
        destination.artistImage = artists[indexPath.row].image
        destination.artistTitle = artists[indexPath.row].title
        destination.artistDescription = artists[indexPath.row].description
        navigationController?.pushViewController(destination, animated: true)
        //self.navigationController?.pushViewController(vc, animated:true)
    }
}
extension MusicListVC {
    func fetchData() -> [Artist] {
        let artists = [ Artist(id:1, image: ArtistImages.beyonce, title: ArtistNames.beyonce, description:          ArtistDescription.beyonce),
                        Artist(id:2, image: ArtistImages.harryStyles, title: ArtistNames.harryStyles, description: ArtistDescription.harryStyles),
                        Artist(id:3, image: ArtistImages.nickiMinaj, title: ArtistNames.nickiMinaj, description: ArtistDescription.nickiMinaj),
                        Artist(id:4, image: ArtistImages.badBunny, title: ArtistNames.badBunny, description: ArtistDescription.badBunny),
                        Artist(id:5, image: ArtistImages.lukeCombs, title: ArtistNames.lukeCombs, description: ArtistDescription.lukeCombs),
                        Artist(id:6, image: ArtistImages.drake, title: ArtistNames.drake, description: ArtistDescription.drake),
                        Artist(id:7, image: ArtistImages.morganWallen, title: ArtistNames.morganWallen, description: ArtistDescription.morganWallen),
                        Artist(id:8, image: ArtistImages.meganTheeStallion, title: ArtistNames.meganTheeStallion, description: ArtistDescription.meganTheeStallion),
                        Artist(id:9, image: ArtistImages.theWeeknd, title: ArtistNames.theWeeknd, description: ArtistDescription.theWeeknd),
                        Artist(id:10, image: ArtistImages.rodWave, title: ArtistNames.rodWave, description: ArtistDescription.rodWave)
        ]
        let newArray = artists.sorted { $0.title ?? "" < $1.title ?? "" }
        return newArray
    }
}
