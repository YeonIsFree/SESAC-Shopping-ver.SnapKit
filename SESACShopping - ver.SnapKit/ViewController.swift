//
//  ViewController.swift
//  SESACShopping - ver.SnapKit
//
//  Created by Seryun Chun on 2024/01/27.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let dataList: [String] = [
        "맥북 거치대",
        "레오폴드 저소음 적축",
        "나이키 러닝화",
        "아이폰이랑 뉴발란스",
        "아아아아 더미더미 더미 데이터"
    ]
    
    // MARK: - UI Properties
    
    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "브랜드, 상품, 프로필, 태그 등"
        searchBar.backgroundColor = .clear
        searchBar.barTintColor = .clear
        return searchBar
    }()
    
    let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "최근 검색"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .white
        return label
    }()
    
    let removeAllbutton: UIButton = {
        let button = UIButton()
        button.setTitle("모두 지우기", for: .normal)
        button.setTitleColor(Colors.pointGreen, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return button
    }()
    
    lazy var headerView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            headerLabel,
            removeAllbutton
        ])
        stackView.axis = .horizontal
        stackView.distribution = .fill
        return stackView
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    
    // MARK: - Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        render()
        configureTableView()
    }
    
    // MARK: - UI Configuration Method
    
    func render() {
        view.addSubview(searchBar)
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(10)
            make.horizontalEdges.equalToSuperview().inset(10)
        }
        
        view.addSubview(headerView)
        headerView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(10)
            make.horizontalEdges.equalToSuperview().inset(10)
            make.height.equalTo(24)
        }
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom).offset(10)
            make.horizontalEdges.equalToSuperview().offset(10)
            make.bottom.equalToSuperview()
        }
    }
}

 // MARK: - UITableView Delegate

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell") as? SearchTableViewCell else { return UITableViewCell() }
        cell.cellLabel.text = dataList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

 // MARK: - UITableView Configuration Method

extension ViewController {
    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SearchTableViewCell.self, forCellReuseIdentifier: "SearchTableViewCell")
        
        tableView.separatorStyle = .none
    }
}

