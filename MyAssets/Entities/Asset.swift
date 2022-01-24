//
//  Asset.swift
//  MyAssets
//
//  Created by Terry on 2022/01/24.
//

import Foundation

//swiftUI에 적절하게 사용하기 위해서 프로토콜 채택
class Asset: Identifiable, ObservableObject, Decodable {
    
    let id : Int
    let type : AssetMenu
    let data : [AssetData]
    
    init(id:Int, type: AssetMenu, data: [AssetData]){
        self.id = id
        self.type = type
        self.data = data
    }
}


class AssetData: Identifiable, ObservableObject, Decodable {
    let id : Int
    let title: String
    let amount: String
    
    init(id: Int, title: String, amount: String){
        self.id = id
        self.title = title
        self.amount = amount
    }
}
