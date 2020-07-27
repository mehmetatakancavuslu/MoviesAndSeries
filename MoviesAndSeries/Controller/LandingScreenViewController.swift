//
//  ViewController.swift
//  MoviesAndSeries
//
//  Created by Atakan Çavuşlu on 27.07.2020.
//  Copyright © 2020 Atakan Çavuşlu. All rights reserved.
//

import UIKit

class LandingScreenViewController: UIViewController {
    
    var landingScreenView = LandingScreenView()
    
    override func loadView() {
        
        view = landingScreenView
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

