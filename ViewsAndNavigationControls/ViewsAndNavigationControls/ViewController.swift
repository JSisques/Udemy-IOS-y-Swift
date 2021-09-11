//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Javier Plaza Sisqués on 5/9/21.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myFakeView: UIView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.load(URLRequest(url: URL(string: "https://www.google.es")!))
        
        myMapView.centerCoordinate = CLLocationCoordinate2D(latitude: 42.60003, longitude: -5.57032)
    }
    
    @IBAction func myButtonAction(_ sender: Any) {
        myView.isHidden = true
    }
}

