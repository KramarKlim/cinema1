//
//  FilmListViewModel.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import Foundation

protocol FilmListViewModelProtocol {
    var count: Int { get }
    func filmViewModel(for indexPath: IndexPath) -> FilmViewModelProtocol?
    var films: [FilmModel] { get }
    func indexPath(for indexPath: IndexPath)
    func infoViewModel() -> InfoViewModelProtocol?
}

class FilmListViewModel: FilmListViewModelProtocol {
    var count: Int {
        films.count
    }
    
    var indexPath: IndexPath?
    
    var films: [FilmModel] = DataManager.shared.movies
    
    func filmViewModel(for indexPath: IndexPath) -> FilmViewModelProtocol? {
        let film = films[indexPath.row]
        return FilmViewModel(film: film)
    }
    
    func indexPath(for indexPath: IndexPath) {
        self.indexPath = indexPath
    }
    
    func infoViewModel() -> InfoViewModelProtocol? {
        guard let indexPath = indexPath else { return nil }
        let newFilm = films[indexPath.row]
        switch indexPath.row {
        case 0: return InfoViewModel(dataFilmToday: DataManager.shared.dataFightToday, filmImage: DataManager.shared.fightImages, dataFilmTommorow: DataManager.shared.dataFightTommorow, description: DataManager.shared.fightDescription, filmName: newFilm.title)
        case 1: return InfoViewModel(dataFilmToday: DataManager.shared.escapeToday, filmImage: DataManager.shared.escapeImage, dataFilmTommorow: DataManager.shared.ecapeTommorow, description: DataManager.shared.escapeDescription, filmName: newFilm.title)
        case 2: return InfoViewModel(dataFilmToday: DataManager.shared.gentelmenToday, filmImage: DataManager.shared.gentelmenImage, dataFilmTommorow: DataManager.shared.gentelmenTomorrow, description: DataManager.shared.gentelmenDescription, filmName: newFilm.title)
        case 3: return InfoViewModel(dataFilmToday: DataManager.shared.americanToday, filmImage: DataManager.shared.americanImage, dataFilmTommorow: DataManager.shared.americanTomorrow, description: DataManager.shared.americanDescription, filmName: newFilm.title)
        case 4: return InfoViewModel(dataFilmToday: DataManager.shared.cardsToday, filmImage: DataManager.shared.cardsImage, dataFilmTommorow: DataManager.shared.cardsTomorrow, description: DataManager.shared.cardsDescription, filmName: newFilm.title)
        case 5: return InfoViewModel(dataFilmToday: DataManager.shared.islandToday, filmImage: DataManager.shared.islandImage, dataFilmTommorow: DataManager.shared.islandTomorrow, description: DataManager.shared.islandDescription, filmName: newFilm.title)
        case 6: return InfoViewModel(dataFilmToday: DataManager.shared.dovodToday, filmImage: DataManager.shared.dovodImage, dataFilmTommorow: DataManager.shared.dovodTomorrow, description: DataManager.shared.dovodDescription, filmName: newFilm.title)
        case 7: return InfoViewModel(dataFilmToday: DataManager.shared.dataInterstellarToday, filmImage: DataManager.shared.interstellarImages, dataFilmTommorow: DataManager.shared.dataInterstellarTommorow, description: DataManager.shared.interDescription, filmName: newFilm.title)
        default:
            return nil
        }
    }
}
