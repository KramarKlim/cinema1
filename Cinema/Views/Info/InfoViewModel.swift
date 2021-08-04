//
//  InfoViewModel.swift
//  Cinema
//
//  Created by Клим on 04.08.2021.
//

import UIKit

protocol InfoViewModelProtocol {
    var filmName: String { get }
    var dataFilmToday: [TimeModel] { get }
    var dataFilmTommorow: [TimeModel] { get }
    var filmImage: [String] { get }
    var countToday: Int { get }
    var countTommorow: Int { get }
    var countImages: Int { get }
    var description: String { get }
    init(dataFilmToday: [TimeModel], filmImage: [String], dataFilmTommorow: [TimeModel], description: String, filmName: String)
    func imagesViewModel(for indexPath: IndexPath) -> ImagesModelViewProtocol?
    func dataViewModel(for indexPath: IndexPath) -> DataViewModelProtocol?
    func timeViewModel(for indexPath: IndexPath) -> TimeViewModelProtocol?
    func firstSelected(descriptionLabel: UILabel, todayLabel: UILabel, tomorrowLabel: UILabel, dataCollectionView: UICollectionView, timeCollectionView: UICollectionView)
    func secondSelected(descriptionLabel: UILabel, todayLabel: UILabel, tomorrowLabel: UILabel, dataCollectionView: UICollectionView, timeCollectionView: UICollectionView)
    func siteViewModelToday() -> SiteViewModelProtocol?
    func siteViewModelTomorrow() -> SiteViewModelProtocol?
    func setIndexPath(for indexPath: IndexPath)
}

class InfoViewModel: InfoViewModelProtocol {
    var countImages: Int {
        filmImage.count
    }
    
    var countToday: Int {
        dataFilmToday.count
    }
    
    var countTommorow: Int {
        dataFilmTommorow.count
    }
    
    var indexPath: IndexPath?
    
    var dataFilmTommorow: [TimeModel]
    
    var dataFilmToday: [TimeModel]
    
    var filmImage: [String]
    
    var description: String
    
    var filmName: String
    
    required init(dataFilmToday: [TimeModel], filmImage: [String], dataFilmTommorow: [TimeModel], description: String, filmName: String) {
        self.dataFilmToday = dataFilmToday
        self.filmImage = filmImage
        self.dataFilmTommorow = dataFilmTommorow
        self.description = description
        self.filmName = filmName
    }
    
    func setIndexPath(for indexPath: IndexPath) {
        self.indexPath = indexPath
    }
    
    func imagesViewModel(for indexPath: IndexPath) -> ImagesModelViewProtocol? {
        let image = filmImage[indexPath.row]
        return ImagesModelView(imagesString: image)
    }
    
    func dataViewModel(for indexPath: IndexPath) -> DataViewModelProtocol? {
        let data = dataFilmToday[indexPath.row]
        return DataViewModel(info: data)
    }
    
    func timeViewModel(for indexPath: IndexPath) -> TimeViewModelProtocol? {
        let time = dataFilmTommorow[indexPath.row]
        return TimeViewModel(information: time)
    }
    
    func firstSelected(descriptionLabel: UILabel, todayLabel: UILabel, tomorrowLabel: UILabel, dataCollectionView: UICollectionView, timeCollectionView: UICollectionView) {
        descriptionLabel.isHidden = true
        todayLabel.isHidden = false
        tomorrowLabel.isHidden = false
        dataCollectionView.isHidden = false
        timeCollectionView.isHidden = false
    }
    func secondSelected(descriptionLabel: UILabel, todayLabel: UILabel, tomorrowLabel: UILabel, dataCollectionView: UICollectionView, timeCollectionView: UICollectionView) {
        descriptionLabel.isHidden = false
        todayLabel.isHidden = true
        tomorrowLabel.isHidden = true
        dataCollectionView.isHidden = true
        timeCollectionView.isHidden = true
    }
    
    func siteViewModelToday() -> SiteViewModelProtocol? {
        guard let indexPath = indexPath else { return nil}
        let ticket = dataFilmToday[indexPath.row]
        return SiteViewModel(name: filmName, ticket: ticket)
    }

    func siteViewModelTomorrow() -> SiteViewModelProtocol? {
        guard let indexPath = indexPath else { return nil}
        let ticket = dataFilmTommorow[indexPath.row]
        return SiteViewModel(name: filmName, ticket: ticket)
    }
}
