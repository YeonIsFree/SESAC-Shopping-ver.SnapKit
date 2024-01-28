//
//  SearchDetailCollectionViewController.swift
//  SESACShopping - ver.SnapKit
//
//  Created by Seryun Chun on 2024/01/28.
//

import UIKit

class SearchDetailCollectionViewController: UIViewController {
    
    // MARK: - UI Properties
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.text = "10,000,000 개의 검색 결과"
        label.textColor = Colors.pointGreen
        label.font = .boldSystemFont(ofSize: 14)
        return label
    }()
    
    let relevantButton: UIButton = {
        let button = UIButton()
        button.setTitle("정확도", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        return button
    }()
    
    let dateButton: UIButton = {
        let button = UIButton()
        button.setTitle("날짜순", for: .normal)
        button.backgroundColor = .clear
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        return button
    }()
    
    let descButton: UIButton = {
        let button = UIButton()
        button.setTitle("가격높은순", for: .normal)
        button.backgroundColor = .clear
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        return button
    }()
    
    let ascButton: UIButton = {
        let button = UIButton()
        button.setTitle("가격낮은순", for: .normal)
        button.backgroundColor = .clear
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            relevantButton,
            dateButton,
            descButton,
            ascButton
        ])
        stackView.spacing = 10
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let deviceWidth = UIScreen.main.bounds.width
        let spacing: CGFloat = 10
        let cellWidth = (deviceWidth - spacing * 3 ) / 2
        layout.itemSize = CGSize(width: cellWidth, height: cellWidth * 1.5)
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        layout.scrollDirection = .vertical
        
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        
        return collectionView
    }()
    
    
    // MARK: - Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        render()
        configureCollectionView()
    }
    
    // MARK: - UI Configuration Method
    
    func render() {
        view.addSubview(resultLabel)
        resultLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(10)
            make.leading.equalToSuperview().inset(10)
            make.height.equalTo(18)
        }
        
        view.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(10)
            make.top.equalTo(resultLabel.snp.bottom).offset(10)
        }
        
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(10)
            make.horizontalEdges.bottom.equalToSuperview()
        }
    }
}

// MARK: - UICollectionView Delegate

extension SearchDetailCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchDetailCollectionViewCell", for: indexPath) as? SearchDetailCollectionViewCell else { return UICollectionViewCell() }
        cell.configure()
        cell.render()
        return cell
    }
}

// MARK: - UICollectionView UI Configuration Medthod

extension SearchDetailCollectionViewController {
    func configureCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(SearchDetailCollectionViewCell.self, forCellWithReuseIdentifier: "SearchDetailCollectionViewCell")
    }
}
