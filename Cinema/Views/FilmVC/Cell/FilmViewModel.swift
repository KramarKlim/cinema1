//
//  FilmViewModel.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import UIKit

protocol FilmViewModelProtocol {
    var title: String { get }
    var image: UIImage { get }
    var film: FilmModel { get }
    init(film: FilmModel)
}

class FilmViewModel: FilmViewModelProtocol {
    
    var title: String {
        film.title
    }
    
    var image: UIImage {
        film.image
    }
    
    var film: FilmModel
    
    required init(film: FilmModel) {
        self.film = film
    }
    
}
