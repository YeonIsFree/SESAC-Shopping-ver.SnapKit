//
//  SearchTableViewCell.swift
//  SESACShopping - ver.SnapKit
//
//  Created by Seryun Chun on 2024/01/27.
//

import UIKit
import SnapKit

class SearchTableViewCell: UITableViewCell {
    
     // MARK: - UI Properties
    
    let searchIcon: UIImageView = {
       let icon = UIImageView()
        icon.image = UIImage(systemName: "magnifyingglass")
        icon.tintColor = .gray
        return icon
    }()
    
    let cellLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let deleteButton: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "multiply"), for: .normal)
        button.tintColor = .gray
        return button
    }()
    
     // MARK: - UITableViewCell init

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        render()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     // MARK: - Cell UI Configuration Method
    
    func render() {
        
        contentView.addSubview(searchIcon)
        searchIcon.snp.makeConstraints { make in
            make.size.equalTo(30)
            make.leading.equalTo(contentView.safeAreaLayoutGuide).inset(10)
            make.centerY.equalToSuperview()
        }
        
        contentView.addSubview(cellLabel)
        cellLabel.snp.makeConstraints { make in
            make.leading.equalTo(searchIcon.snp.trailing).offset(20)
            make.centerY.equalToSuperview()
        }
        
        contentView.addSubview(deleteButton)
        deleteButton.snp.makeConstraints { make in
            make.size.equalTo(30)
            make.leading.greaterThanOrEqualTo(cellLabel).offset(5)
            make.trailing.equalToSuperview().inset(10)
            make.centerY.equalToSuperview()
        }
    }
}
