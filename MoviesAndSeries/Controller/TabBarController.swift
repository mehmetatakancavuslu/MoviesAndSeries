//
//  TabBarController.swift
//  MoviesAndSeries
//
//  Created by Atakan Çavuşlu on 29.07.2020.
//  Copyright © 2020 Atakan Çavuşlu. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let moviesViewController = UINavigationController(rootViewController: MoviesViewController())
        let seriesViewController = UINavigationController(rootViewController: SeriesViewController())
        let artistsViewController = UINavigationController(rootViewController: ArtistsViewController())
        
        // TODO: Change tabBarItem icons.
        moviesViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        seriesViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        artistsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)

        let tabBarList = [moviesViewController, seriesViewController, artistsViewController]
        viewControllers = tabBarList
        
        // Change the tint and trasparency.
        self.tabBar.isTranslucent = false
        self.tabBar.barTintColor = UIColor(red: 250/256, green: 250/256, blue: 250/256, alpha: 1.0)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let landingVC = LandingScreenViewController()
        landingVC.modalPresentationStyle = .overFullScreen
        self.present(landingVC, animated: false, completion: nil)
        
    }

}
