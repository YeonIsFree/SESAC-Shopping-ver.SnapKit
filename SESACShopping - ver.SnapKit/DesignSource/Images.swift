//
//  Images.swift
//  SeSACShopping
//
//  Created by Seryun Chun on 2024/01/18.
//

import UIKit

enum Images {
    // 새싹 로고 이미지
    static var logo: UIImage = UIImage(resource: .sesacShopping)
    
    // 온보딩 이미지
    static var onboarding: UIImage = UIImage(resource: .onboarding)
    
    // 카메라 버튼 이미지
    static var camera: UIImage = UIImage(resource: .camera)
    
    // 아이콘 이미지
    static var search: UIImage = UIImage(systemName: "magnifyingglass")!
    static var delete: UIImage = UIImage(systemName: "multiply")!
    static var heartFill: UIImage = UIImage(systemName: "heart.fill")!
    static var heart: UIImage = UIImage(systemName: "heart")!
    
    // empty Cell 이미지
    static var empty: UIImage = UIImage(resource: .empty)
    
    // 프로필 이미지
    static var profile1: UIImage = UIImage(resource: .profile1)
    static var profile2: UIImage = UIImage(resource: .profile2)
    static var profile3: UIImage = UIImage(resource: .profile3)
    static var profile4: UIImage = UIImage(resource: .profile4)
    static var profile5: UIImage = UIImage(resource: .profile5)
    static var profile6: UIImage = UIImage(resource: .profile6)
    static var profile7: UIImage = UIImage(resource: .profile7)
    static var profile8: UIImage = UIImage(resource: .profile8)
    static var profile9: UIImage = UIImage(resource: .profile9)
    static var profile10: UIImage = UIImage(resource: .profile10)
    static var profile11: UIImage = UIImage(resource: .profile11)
    static var profile12: UIImage = UIImage(resource: .profile12)
    static var profile13: UIImage = UIImage(resource: .profile13)
    static var profile14: UIImage = UIImage(resource: .profile14)
    
    // 프로필 이미지 배열
    static var profiles: [UIImage] = [profile1, profile2, profile3,profile4, profile5, profile6,profile7, profile8, profile9,profile10, profile11, profile12, profile13, profile14]
}
