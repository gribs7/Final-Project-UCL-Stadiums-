//
//  ViewController.swift
//  Final Project (UCL Stadiums)
//
//  Created by Gabriel Ribeiro on 4/25/16.
//  Copyright © 2016 SHP. All rights reserved.
//

import UIKit

import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var theMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    //OPEN-UP VIEW OF MAP
        
        let latDelta: CLLocationDegrees = 30
        let longDelta: CLLocationDegrees = 30
        
        let theSpan: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        
    //DIFFERENT KINDS OF MAPS
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        
        
        segmentedControl.addTarget(self, action: "mapTypeChanged:", forControlEvents: .ValueChanged)
        
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        
        let topConstraint = segmentedControl.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 8)
        
        let margins = view.layoutMarginsGuide
        
        let leadingConstraint = segmentedControl.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor)
        
        topConstraint.active = true
        leadingConstraint.active = true
        trailingConstraint.active = true

       
    //ESTADIO DA LUZ
        let EstadioDaLuzLatitude: CLLocationDegrees = 38.7527
        let EstadioDaLuzLongitude: CLLocationDegrees = -9.1848
        
        let EstadioDaLuzLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(EstadioDaLuzLatitude, EstadioDaLuzLongitude)
        
        let EstadioDaLuzAnnotation = MKPointAnnotation()
        
        EstadioDaLuzAnnotation.title = "Estadio Da Luz"
        EstadioDaLuzAnnotation.subtitle = "Best Stadium in the World"
        
        EstadioDaLuzAnnotation.coordinate = EstadioDaLuzLocation
        
        self.theMapView.addAnnotation(EstadioDaLuzAnnotation)
      
        
    //PARC DES PRINCES
        
        let ParcDesPrincesLatitude: CLLocationDegrees = 48.8414
        let ParcDesPrincesLongitude: CLLocationDegrees = 2.2530
        
        let ParcDesPrincesLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(ParcDesPrincesLatitude, ParcDesPrincesLongitude)
        
        let ParcDesPrincesAnnotation = MKPointAnnotation()
        
        ParcDesPrincesAnnotation.title = "Parc Des Princes"
        ParcDesPrincesAnnotation.subtitle = "Where PSG plays"
        
        ParcDesPrincesAnnotation.coordinate = ParcDesPrincesLocation
        
        self.theMapView.addAnnotation(ParcDesPrincesAnnotation)
        
    //THE REGION UPON OPENING THE MAP
        
        let theRegion: MKCoordinateRegion = MKCoordinateRegionMake(ParcDesPrincesLocation, theSpan)
        
        self.theMapView.setRegion(theRegion, animated: true)
        
        
    //ALLIANZ ARENA
        
        let AllianzArenaLatitude: CLLocationDegrees = 48.2188
        let AllianzArenaLongitude: CLLocationDegrees = 11.6247
        
        let AllianzArenaLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(AllianzArenaLatitude, AllianzArenaLongitude)
        
        let AllianzArenaAnnotation = MKPointAnnotation()
        
        AllianzArenaAnnotation.title = "Allianz Arena"
        AllianzArenaAnnotation.subtitle = "Where Bayern Munchen plays"
        
        AllianzArenaAnnotation.coordinate = AllianzArenaLocation
        
        self.theMapView.addAnnotation(AllianzArenaAnnotation)
        
        
    //STAMFORD BRIDGE
        
        let StamfordBridgeLatitude: CLLocationDegrees = 51.4817
        let StamfordBridgeLongitude: CLLocationDegrees = -0.1910
        
        let StamfordBridgeLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(StamfordBridgeLatitude, StamfordBridgeLongitude)
        
        let StamfordBridgeAnnotation = MKPointAnnotation()
        
        StamfordBridgeAnnotation.title = "Stamford Bridge"
        StamfordBridgeAnnotation.subtitle = "Chelsea FC plays here"
        
        StamfordBridgeAnnotation.coordinate = StamfordBridgeLocation
        
        self.theMapView.addAnnotation(StamfordBridgeAnnotation)
   
    
    //SANTIAGO BARNABEU
        
        let SantiagoBarnabeuLatitude: CLLocationDegrees = 40.4531
        let SantiagoBarnabeuLongitude: CLLocationDegrees = -3.6883
        
        let SantiagoBarnabeuLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(SantiagoBarnabeuLatitude, SantiagoBarnabeuLongitude)
        
        let SantiagoBarnabeuAnnotation = MKPointAnnotation()
        
        SantiagoBarnabeuAnnotation.title = "Santiago Barnabeu"
        SantiagoBarnabeuAnnotation.subtitle = "Where Real Madrid plays"
        
        SantiagoBarnabeuAnnotation.coordinate = SantiagoBarnabeuLocation
        
        self.theMapView.addAnnotation(SantiagoBarnabeuAnnotation)
        
        
    //JUVENTUS STADIUM
        
        let JuventusStadiumLatitude: CLLocationDegrees = 45.1096
        let JuventusStadiumLongitude: CLLocationDegrees = 7.6413
        
        let JuventusStadiumLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(JuventusStadiumLatitude, JuventusStadiumLongitude)
        
        let JuventusStadiumAnnotation = MKPointAnnotation()
        
        JuventusStadiumAnnotation.title = "Juventus Stadium"
        JuventusStadiumAnnotation.subtitle = "Where the Old Lady plays"
        
        JuventusStadiumAnnotation.coordinate = JuventusStadiumLocation
        
        self.theMapView.addAnnotation(JuventusStadiumAnnotation)
        
        
    //CAMP NOU
        
        let CampNouLatitude: CLLocationDegrees = 41.3809
        let CampNouLongitude: CLLocationDegrees = 2.1228
        
        let CampNouLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(CampNouLatitude, CampNouLongitude)
        
        let CampNouAnnotation = MKPointAnnotation()
        
        CampNouAnnotation.title = "Camp Nou"
        CampNouAnnotation.subtitle = "Where Barcelona plays"
        
        CampNouAnnotation.coordinate = CampNouLocation
        
        self.theMapView.addAnnotation(CampNouAnnotation)
        
        
    //ETIHAD STADIUM
        
        let EtihadStadiumLatitude: CLLocationDegrees = 53.2859
        let EtihadStadiumLongitude: CLLocationDegrees = -2.121
        
        let EtihadStadiumLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(EtihadStadiumLatitude, EtihadStadiumLongitude)
        
        let EtihadStadiumAnnotation = MKPointAnnotation()
        
        EtihadStadiumAnnotation.title = "Etihad Stadium"
        EtihadStadiumAnnotation.subtitle = "Where Manchester City plays"
        
        EtihadStadiumAnnotation.coordinate = EtihadStadiumLocation
        
        self.theMapView.addAnnotation(EtihadStadiumAnnotation)
        
        
    //VICENTE CALDERON STADIUM
        
        let VincenteCalderonStadiumLatitude: CLLocationDegrees = 40.4017
        let VincenteCalderonStadiumLongitude: CLLocationDegrees = -3.7206
        
        let VincenteCalderonStadiumLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(VincenteCalderonStadiumLatitude, VincenteCalderonStadiumLongitude)
        
        let VincenteCalderonStadiumAnnotation = MKPointAnnotation()
        
        VincenteCalderonStadiumAnnotation.title = "Vincente Calderón Stadium"
        VincenteCalderonStadiumAnnotation.subtitle = "Where Atlético Madrid plays"
        
        VincenteCalderonStadiumAnnotation.coordinate = VincenteCalderonStadiumLocation
        
        self.theMapView.addAnnotation(VincenteCalderonStadiumAnnotation)
        
    
    //PHILIPS STADION
        
        let PhilipsStadionLatitude: CLLocationDegrees = 51.2630
        let PhilipsStadionLongitude: CLLocationDegrees = 5.2828
        
        let PhilipsStadionLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(PhilipsStadionLatitude, PhilipsStadionLongitude)
        
        let PhilipsStadionAnnotation = MKPointAnnotation()
        
        PhilipsStadionAnnotation.title = "Philips Stadion"
        PhilipsStadionAnnotation.subtitle = "Where PSV plays"
        
        PhilipsStadionAnnotation.coordinate = PhilipsStadionLocation
        
        self.theMapView.addAnnotation(PhilipsStadionAnnotation)
        
        
    //SIGNAL IDUNA PARK
        
        let SignalIdunaParkLatitude: CLLocationDegrees = 51.4926
        let SignalIdunaParkLongitude: CLLocationDegrees = 7.4519
        
        let SignalIdunaParkLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(SignalIdunaParkLatitude, SignalIdunaParkLongitude)
        
        let SignalIdunaParkAnnotation = MKPointAnnotation()
        
        SignalIdunaParkAnnotation.title = "Signal Iduna Park"
        SignalIdunaParkAnnotation.subtitle = "Home to the Yellow Wall"
        
        SignalIdunaParkAnnotation.coordinate = SignalIdunaParkLocation
        
        self.theMapView.addAnnotation(SignalIdunaParkAnnotation)
        
        
    //PARC OLYMPIQUE LYONNAIS
        
        let ParcOlympiqueLyonnaisLatitude: CLLocationDegrees = 45.7651
        let ParcOlympiqueLyonnaisLongitude: CLLocationDegrees = 4.9806
        
        let ParcOlympiqueLyonnaisLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(ParcOlympiqueLyonnaisLatitude, ParcOlympiqueLyonnaisLongitude)
        
        let ParcOlympiqueLyonnaisAnnotation = MKPointAnnotation()
        
        ParcOlympiqueLyonnaisAnnotation.title = "Parc Olympique Lyonnais"
        ParcOlympiqueLyonnaisAnnotation.subtitle = "Where Olympique Lyonnais plays"
        
        ParcOlympiqueLyonnaisAnnotation.coordinate = ParcOlympiqueLyonnaisLocation
        
        self.theMapView.addAnnotation(ParcOlympiqueLyonnaisAnnotation)
        
        
    //ESTADIO DO DRAGAO
        
        let EstadioDoDragaoLatitude: CLLocationDegrees = 41.1618
        let EstadioDoDragaoLongitude: CLLocationDegrees = -8.5836
        
        let EstadioDoDragaoLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(EstadioDoDragaoLatitude, EstadioDoDragaoLongitude)
        
        let EstadioDoDragaoAnnotation = MKPointAnnotation()
        
        EstadioDoDragaoAnnotation.title = "Estádio do Dragão"
        EstadioDoDragaoAnnotation.subtitle = "Home to FC Porto"
        
        EstadioDoDragaoAnnotation.coordinate = EstadioDoDragaoLocation
        
        self.theMapView.addAnnotation(EstadioDoDragaoAnnotation)
        
        
    //EMIRATES STADIUM
        
        let EmiratesStadiumLatitude: CLLocationDegrees = 51.5549
        let EmiratesStadiumLongitude: CLLocationDegrees = -0.1084
        
        let EmiratesStadiumLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(EmiratesStadiumLatitude, EmiratesStadiumLongitude)
        
        let EmiratesStadiumAnnotation = MKPointAnnotation()
        
        EmiratesStadiumAnnotation.title = "Emirates Stadium"
        EmiratesStadiumAnnotation.subtitle = "Home to Arsenal FC"
        
        EmiratesStadiumAnnotation.coordinate = EmiratesStadiumLocation
        
        self.theMapView.addAnnotation(EmiratesStadiumAnnotation)
        
        
    //STADIO OLIMPICO
        
        let StadioOlimpicoLatitude: CLLocationDegrees = 41.9341
        let StadioOlimpicoLongitude: CLLocationDegrees = 12.4547
        
        let StadioOlimpicoLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(StadioOlimpicoLatitude, StadioOlimpicoLongitude)
        
        let StadioOlimpicoAnnotation = MKPointAnnotation()
        
        StadioOlimpicoAnnotation.title = "Stadio Olimpico"
        StadioOlimpicoAnnotation.subtitle = "Where AS Roma plays"
        
        StadioOlimpicoAnnotation.coordinate = StadioOlimpicoLocation
        
        self.theMapView.addAnnotation(StadioOlimpicoAnnotation)
        
        
    //BAYARENA
        
        let BayArenaLatitude: CLLocationDegrees = 51.0382
        let BayArenaLongitude: CLLocationDegrees = 7.0023
        
        let BayArenaLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(BayArenaLatitude, BayArenaLongitude)
        
        let BayArenaAnnotation = MKPointAnnotation()
        
        BayArenaAnnotation.title = "BayArena"
        BayArenaAnnotation.subtitle = "Where Bayer Leverkusen plays"
        
        BayArenaAnnotation.coordinate = BayArenaLocation
        
        self.theMapView.addAnnotation(BayArenaAnnotation)
        
    
    //STADE LOUIS II
        
        let StadeLouisIILatitude: CLLocationDegrees = 43.7276
        let StadeLouisIILongitude: CLLocationDegrees = 7.4155
        
        let StadeLouisIILocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(StadeLouisIILatitude, StadeLouisIILongitude)
        
        let StadeLouisIIAnnotation = MKPointAnnotation()
        
        StadeLouisIIAnnotation.title = "Stade Louis II"
        StadeLouisIIAnnotation.subtitle = "Home to AS Monaco"
        
        StadeLouisIIAnnotation.coordinate = StadeLouisIILocation
        
        self.theMapView.addAnnotation(StadeLouisIIAnnotation)
        
        
    //VOLKSWAGEN ARENA
        
        let VolkswagenArenaLatitude: CLLocationDegrees = 52.4326
        let VolkswagenArenaLongitude: CLLocationDegrees = 10.8039
        
        let VolkswagenArenaLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(VolkswagenArenaLatitude, VolkswagenArenaLongitude)
        
        let VolkswagenArenaAnnotation = MKPointAnnotation()
        
        VolkswagenArenaAnnotation.title = "Volkswagen Arena"
        VolkswagenArenaAnnotation.subtitle = "Where VfL Wolfsburg plays"
        
        VolkswagenArenaAnnotation.coordinate = VolkswagenArenaLocation
        
        self.theMapView.addAnnotation(VolkswagenArenaAnnotation)
        
        
    //
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    

    //FUNCTION FOR CHANGING MAP VIEWS
    
    func mapTypeChanged(segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            theMapView.mapType = .Standard
        case 1:
            theMapView.mapType = .Hybrid
        case 2:
            theMapView.mapType = .Satellite
        default:
            break
        }
    }
    
    
    
    
}

