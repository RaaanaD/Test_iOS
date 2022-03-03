//
//  SearchResult.swift
//  Test_iOS
//
//  Created by 台莉捺子 on 2022/03/03.
//

import Foundation

import RxDataSources

struct SearchResult: Decodable {
    var items: [UserInfo]
}

struct UserInfo: Decodable {
    let username: String
    let type: String
    let profileImageUrl: String
    let organizationsUrl: String
    
    enum CodingKeys: String, CodingKey {
        case username = "login"
        case type = "type"
        case profileImageUrl = "avatar_url"
        case organizationsUrl = "organizations_url"
    }
}

extension UserSectionModel: SectionModelType {
    
    typealias Item = UserInfo
    
    init(original: UserSectionModel, items: [Item]) {
        self = original
        self.items = items
    }
}

struct UserSectionModel {
    var items: [Item]
}
