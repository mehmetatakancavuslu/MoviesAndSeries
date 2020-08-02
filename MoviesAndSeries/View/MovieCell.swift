//
//  MovieCell.swift
//  MoviesAndSeries
//
//  Created by Atakan Çavuşlu on 2.08.2020.
//  Copyright © 2020 Atakan Çavuşlu. All rights reserved.
//

import UIKit

class MovieCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Subview setup convenience functions
    
    func createSubviews() {
        contentView.addSubview(imageView)
        contentView.addSubview(detailView)
        detailView.addSubview(titleLabel)
        detailView.addSubview(durationLabel)
    }

    func setupSubviews() {
        setupImageView()
        setupDetailView()
        setupTitleLabel()
        setupDurationLabel()
    }
    
    // MARK: - Create each subview
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "landingPageImage")
        return imageView
    }()
    
    let detailView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Movie Title"
        label.font = UIFont(name: "AppleGothic", size: 14)
        label.textColor = UIColor(red: 70/255, green: 70/255, blue: 70/255, alpha: 1.0)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let durationLabel: UILabel = {
        let label = UILabel()
        label.text = "1h, 25mins"
        label.font = UIFont(name: "AppleGothic", size: 12)
        label.textColor = UIColor(red: 155/255, green: 155/255, blue: 155/255, alpha: 1.0)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Create constraints
    
    func setupImageView() {
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: detailView.topAnchor).isActive = true
    }
    
    func setupDetailView() {
        detailView.heightAnchor.constraint(equalToConstant: 46).isActive = true
        detailView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        detailView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        detailView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    func setupTitleLabel() {
        titleLabel.topAnchor.constraint(equalTo: detailView.topAnchor, constant: 8).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: detailView.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: detailView.trailingAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 17).isActive = true
    }
    
    func setupDurationLabel() {
        durationLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        durationLabel.leadingAnchor.constraint(equalTo: detailView.leadingAnchor).isActive = true
        durationLabel.trailingAnchor.constraint(equalTo: detailView.trailingAnchor).isActive = true
        durationLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
    }
    
}
