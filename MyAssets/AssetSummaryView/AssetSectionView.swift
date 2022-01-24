//
//  AssetSectionView.swift
//  MyAssets
//
//  Created by Terry on 2022/01/24.
//

import SwiftUI

struct AssetSectionView: View {
    @ObservedObject var assetSection: Asset
    var body: some View {
        VStack(spacing: 20){
            AssetSectionHeaderView(title: assetSection.type.title)
            ForEach(assetSection.data) { data in
                HStack{
                    Text(data.title)
                        .font(.title)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(data.amount)
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                Divider()
            }
        }
        .padding()
    }
}

struct AssetSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let asset = Asset(id: 0,
                          type: .bankAccount,
                          data: [
                            AssetData(id: 0, title: "신한은행", amount: "5,300,100원"),
                            AssetData(id: 1, title: "국민은행", amount: "4,220,100원"),
                            AssetData(id: 2, title: "우리은행", amount: "77,200,100원")
                          ])
        AssetSectionView(assetSection: asset)
    }
}
