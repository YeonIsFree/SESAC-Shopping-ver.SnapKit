//
//  SortingButton.swift
//  SESACShopping - ver.SnapKit
//
//  Created by Seryun Chun on 2024/01/29.
//

import UIKit

class SortingButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSortingButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureSortingButton() {
        backgroundColor = .black
        setTitleColor(.white, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 14)
        clipsToBounds = true
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
    }
}
