//
//  LandingScreenView.swift
//  MoviesAndSeries
//
//  Created by Atakan Çavuşlu on 27.07.2020.
//  Copyright © 2020 Atakan Çavuşlu. All rights reserved.
//

import UIKit

class LandingScreenView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
        setupSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createSubviews()
        setupSubviews()
    }
    
    // MARK: - Subview setup convenience functions
    
    func createSubviews() {
        self.addSubview(backgroundImageView)
    }
    
    func setupSubviews() {
        setupBackgroudImageView()
    }
    
    // MARK: - Create each subview
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "landingPageImage")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - Create constraints
    
    func setupBackgroudImageView() {
        backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
}
