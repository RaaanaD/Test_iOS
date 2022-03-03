//
//  OrganizationInfo.swift
//  Test_iOS
//
//  Created by 台莉捺子 on 2022/03/03.
//

import Foundation
import RxDataSources

struct OrganizationInfo: Decodable, Equatable {
    let organizationImageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case organizationImageUrl = "avatar_url"
    }
}

struct OrganizationSectionModel {
    
    var items: [Item]
    
}

extension OrganizationSectionModel: SectionModelType {
    
    typealias Item = OrganizationInfo
    
    init(original: OrganizationSectionModel, items: [Item]) {
        self = original
        self.items = items
    }
}
