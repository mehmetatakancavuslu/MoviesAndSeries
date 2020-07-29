//
//  ViewController.swift
//  MoviesAndSeries
//
//  Created by Atakan Çavuşlu on 27.07.2020.
//  Copyright © 2020 Atakan Çavuşlu. All rights reserved.
//

import UIKit

class LandingScreenViewController: UIViewController, LandingScreenDelegate {
    
    var landingScreenView = LandingScreenView()
    
    override func loadView() {
        
        view = landingScreenView
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        landingScreenView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
        
    }
    
    func exploreButtonTapped() {
        
        super.dismiss(animated: false, completion: nil)
        
    }

}

