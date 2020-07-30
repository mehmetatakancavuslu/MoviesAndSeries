//
//  MoviesScrollView.swift
//  MoviesAndSeries
//
//  Created by Atakan Çavuşlu on 30.07.2020.
//  Copyright © 2020 Atakan Çavuşlu. All rights reserved.
//

import UIKit

class MoviesView: UIView {

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
        self.addSubview(scrollView)
        scrollView.addSubview(popularLabel)
        scrollView.addSubview(popularCollectionView)
        scrollView.addSubview(recentLabel)
        scrollView.addSubview(recentCollectionView)
        scrollView.addSubview(soonLabel)
        scrollView.addSubview(soonCollectionView)
    }
    
    func setupSubviews() {
        setupScrollView()
        setupPopularLabel()
        setupPopularCollectionView()
        setupRecentLabel()
        setupRecentCollectionView()
        setupSoonLabel()
        setupSoonCollectionView()
    }
    
    // MARK: - Create each subview
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = UIColor(red: 220/256, green: 220/256, blue: 220/256, alpha: 1.0)
        return scrollView
    }()
    
    private let popularLabel: UILabel = {
        let label = UILabel()
        label.text = "Most Popular"
        label.font = UIFont(name: "AppleGothic", size: 16)
        label.textColor = UIColor(red: 70/256, green: 70/256, blue: 70/256, alpha: 1.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let popularCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .red
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    private let recentLabel: UILabel = {
        let label = UILabel()
        label.text = "Most Recent"
        label.font = UIFont(name: "AppleGothic", size: 16)
        label.textColor = UIColor(red: 70/256, green: 70/256, blue: 70/256, alpha: 1.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let recentCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .red
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    private let soonLabel: UILabel = {
        let label = UILabel()
        label.text = "Coming Soon"
        label.font = UIFont(name: "AppleGothic", size: 16)
        label.textColor = UIColor(red: 70/256, green: 70/256, blue: 70/256, alpha: 1.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let soonCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .red
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()

    // MARK: - Create constraints
    
    func setupScrollView() {
        scrollView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    func setupPopularLabel() {
        popularLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 15).isActive = true
        popularLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        popularLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0).isActive = true
        
    }
    
    func setupPopularCollectionView() {
        popularCollectionView.topAnchor.constraint(equalTo: popularLabel.bottomAnchor, constant: 10).isActive = true
        popularCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        popularCollectionView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0).isActive = true
        popularCollectionView.heightAnchor.constraint(equalToConstant: 230).isActive = true
    }
    
    func setupRecentLabel() {
        recentLabel.topAnchor.constraint(equalTo: popularCollectionView.bottomAnchor, constant: 15).isActive = true
        recentLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        recentLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0).isActive = true
        
    }
    
    func setupRecentCollectionView() {
        recentCollectionView.topAnchor.constraint(equalTo: recentLabel.bottomAnchor, constant: 10).isActive = true
        recentCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        recentCollectionView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0).isActive = true
        recentCollectionView.heightAnchor.constraint(equalToConstant: 230).isActive = true
    }
    
    func setupSoonLabel() {
        soonLabel.topAnchor.constraint(equalTo: recentCollectionView.bottomAnchor, constant: 15).isActive = true
        soonLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10).isActive = true
        soonLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0).isActive = true
        
    }
    
    func setupSoonCollectionView() {
        soonCollectionView.topAnchor.constraint(equalTo: soonLabel.bottomAnchor, constant: 10).isActive = true
        soonCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        soonCollectionView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0).isActive = true
        soonCollectionView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.0).isActive = true
        soonCollectionView.heightAnchor.constraint(equalToConstant: 230).isActive = true
    }
    
    // MARK: - UIButton selectors
}
