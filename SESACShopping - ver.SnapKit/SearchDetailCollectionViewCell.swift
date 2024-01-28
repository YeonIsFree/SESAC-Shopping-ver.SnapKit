//
//  SearchDetailCollectionViewCell.swift
//  SESACShopping - ver.SnapKit
//
//  Created by Seryun Chun on 2024/01/28.
//

import UIKit

class SearchDetailCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "SearchDetailCollectionViewCell"
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = Colors.pointGreen
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    let likeButton: UIButton = {
        let button = UIButton()
        button.setImage(Images.heart, for: .normal)
        button.tintColor = .black
        button.backgroundColor = .white
       return button
    }()
    
    let companyLabel: UILabel = {
        let label = UILabel()
        label.text = "세련이네회사"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "세련이가파는물건"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "19,000,000 원"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    
    func configure() {
//        imageView.image = .profile10
    }
    
    func render() {
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.horizontalEdges.equalToSuperview()
            make.height.equalTo(imageView.snp.width)
        }
        
        imageView.addSubview(likeButton)
        likeButton.snp.makeConstraints { make in
            make.trailing.bottom.equalToSuperview().inset(10)
            make.size.equalTo(20)
        }
        
        contentView.addSubview(companyLabel)
        companyLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(10)
            make.leading.equalTo(imageView)
            make.height.equalTo(12)
        }
        
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(companyLabel.snp.bottom).offset(10)
            make.leading.equalTo(companyLabel)
            make.height.equalTo(16)
        }
        
        contentView.addSubview(priceLabel)
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.leading.equalTo(titleLabel)
            make.bottom.equalTo(contentView.snp.bottom).inset(5)
            make.height.equalTo(20)
        }
    }
}
