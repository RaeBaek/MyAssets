//
//  Asset.swift
//  MyAssets
//
//  Created by 백래훈 on 2022/10/06.
//

import Foundation

class Asset: Identifiable, ObservableObject, Decodable {
    let id: Int
    let type: AssetMenu
    let data: [AssetData]
    
    init(id: Int, type: AssetMenu, data: [AssetData]) {
        self.id = id
        self.type = type
        self.data = data
    }
}

class AssetData: Identifiable, ObservableObject, Decodable {
    
    let id: Int
    let title: String
    let amount: String
    
    init(id: Int, title: String, amount: String) {
        self.id = id
        self.title = title
        self.amount = amount
    }
}
