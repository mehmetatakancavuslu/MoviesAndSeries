//
//  MoviesViewController.swift
//  MoviesAndSeries
//
//  Created by Atakan Çavuşlu on 28.07.2020.
//  Copyright © 2020 Atakan Çavuşlu. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {
    
    var moviesView = MoviesView()
    
    override func loadView() {
        
        self.view = moviesView
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
                
        navigationController?.navigationBar.barTintColor = UIColor(red: 250/256, green: 250/256, blue: 250/256, alpha: 1.0)
        
        self.title = "Movies"

    }

}
