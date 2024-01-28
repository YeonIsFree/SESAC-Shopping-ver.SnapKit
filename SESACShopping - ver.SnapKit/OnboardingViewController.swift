//
//  OnboardingViewController.swift
//  SESACShopping - ver.SnapKit
//
//  Created by Seryun Chun on 2024/01/28.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    // MARK: - UI Properties
    
    let logo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Images.logo
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let onboardingImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Images.onboarding
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("시작하기", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.backgroundColor = Colors.pointGreen
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    // MARK: - Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        render()
    }
    
    // MARK: -
    
    func render() {
        view.addSubview(logo)
        logo.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(80)
            make.centerX.equalToSuperview()
            make.horizontalEdges.equalToSuperview().inset(40)
            make.height.equalTo(100)
        }
        
        view.addSubview(onboardingImage)
        onboardingImage.snp.makeConstraints { make in
            make.top.equalTo(logo.snp.bottom).offset(60)
            make.horizontalEdges.equalTo(view).inset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(300)
        }
        
        view.addSubview(startButton)
        startButton.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.bottom.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.height.equalTo(50)
        }
    }
    
    
}
