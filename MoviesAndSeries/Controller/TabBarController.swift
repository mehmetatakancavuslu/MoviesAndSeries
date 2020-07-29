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
        
        // TODO: Change tabBarItem icons.
        
        let moviesViewController = UINavigationController(rootViewController: MoviesViewController())
                
        moviesViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)

        let seriesViewController = UINavigationController(rootViewController: SeriesViewController())

        seriesViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        let artistsViewController = UINavigationController(rootViewController: ArtistsViewController())

        artistsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)

        let tabBarList = [moviesViewController, seriesViewController, artistsViewController]

        viewControllers = tabBarList
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let landingVC = LandingScreenViewController()
        landingVC.modalPresentationStyle = .overFullScreen
        self.present(landingVC, animated: false, completion: nil)
        
    }

}
