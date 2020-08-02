//
//  LandingScreenView.swift
//  MoviesAndSeries
//
//  Created by Atakan Çavuşlu on 27.07.2020.
//  Copyright © 2020 Atakan Çavuşlu. All rights reserved.
//

import UIKit

protocol LandingScreenDelegate: class {
    
    func exploreButtonTapped()
    
}

class LandingScreenView: UIView {
    
    weak var delegate: LandingScreenDelegate?

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
        self.addSubview(titleLabel)
        self.addSubview(tmdbImageView)
        self.addSubview(descriptionLabel)
        self.addSubview(exploreButton)
    }
    
    func setupSubviews() {
        setupBackgroudImageView()
        setupTitleLabel()
        setupTmdbImageView()
        setupDescriptionLabel()
        setupExploreButton()
    }
    
    // MARK: - Create each subview
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "landingPageImage")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Movies & Series"
        label.font = UIFont(name: "AppleGothic", size: 40)
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let tmdbImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "tmdbTitle")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "This product uses the TMDb API but is not endorsed or certified by TMDb."
        label.font = UIFont(name: "AppleGothic", size: 17)
        label.textAlignment = .center
        label.textColor = .white
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let exploreButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Explore Collection", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.init(red: 2/256, green: 148/256, blue: 165/256, alpha: 0.8)
        button.titleLabel?.font = UIFont(name: "AppleGothic", size: 22)
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(exploreButtonTapped(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Create constraints
    
    func setupBackgroudImageView() {
        backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    func setupTitleLabel() {
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: tmdbImageView.topAnchor, constant: -20).isActive = true
    }
    
    func setupTmdbImageView() {
        tmdbImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -20).isActive = true
        tmdbImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        tmdbImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        tmdbImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setupDescriptionLabel() {
        descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: tmdbImageView.bottomAnchor, constant: 20).isActive = true
    }
    
    func setupExploreButton() {
        exploreButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        exploreButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        exploreButton.heightAnchor.constraint(equalToConstant: 55).isActive = true
        exploreButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -70).isActive = true
    }
    
    // MARK: - Delegate methods
    
    @objc func exploreButtonTapped(_ sender: UIButton) {
        
        self.delegate?.exploreButtonTapped()
        
    }
    
}
