//
//  MapViewController.swift
//  Cinema1
//
//  Created by Клим on 03.08.2021.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
    
    @IBOutlet var locationMapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    let manager = CLLocationManager()
    
    let annotation: MKPointAnnotation = {
        let annotation = MKPointAnnotation()
        annotation.coordinate = DataManager.shared.coordinateCinema
        annotation.title = "ABOBA"
        return annotation
    }()
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.topItem?.title = "Карта"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.navigationBar.topItem?.title = "Карта"
        setUp()
        manager.requestWhenInUseAuthorization()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = kCLDistanceFilterNone
        locationMapView.showsUserLocation = true
    }
    
    private func setUp() {
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        locationMapView.addAnnotation(annotation)
        locationMapView.setRegion(region, animated: true)
    }

}
