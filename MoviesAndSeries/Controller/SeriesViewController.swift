//
//  SeriesViewController.swift
//  MoviesAndSeries
//
//  Created by Atakan Çavuşlu on 29.07.2020.
//  Copyright © 2020 Atakan Çavuşlu. All rights reserved.
//

import UIKit

class SeriesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 250/256, green: 250/256, blue: 250/256, alpha: 1.0)
        
        self.title = "TV Series"
        self.view.backgroundColor = UIColor(red: 225/256, green: 225/256, blue: 225/256, alpha: 1.0)
        
    }

}
