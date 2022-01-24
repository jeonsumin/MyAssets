//
//  AssetSectionCardView.swift
//  MyAssets
//
//  Created by Terry on 2022/01/24.
//

import SwiftUI

struct AssetSectionCardView: View {
    @State private var selectedTab = 1
    @ObservedObject var asset: Asset
    
    var assetData: [AssetData] {
        return asset.data
    }
    
    var body: some View {
        VStack {
            AssetSectionHeaderView(title: asset.type.title)
            TabMenuView(tabs: ["지난달 결제","이번달 결제", "다음달 결제" ],
                        selectedTab: $selectedTab,
                        updated: .constant(.nextMonth(amount: "100,500원")))
            TabView(selection: $selectedTab,
                    content: {
                ForEach(0...2, id: \.self) { i in
                    VStack {
                        ForEach(assetData) { data in
                            HStack {
                                Text(data.title)
                                    .font(.title)
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text(data.creditCardAmounts![i].amount)
                                    .font(.title2)
                                    .foregroundColor(.primary)
                            }
                            Divider()
                        }
                    }
                    .tag(i)
                }
            })
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        .padding()
    }
}

struct AssetSectionCardView_Previews: PreviewProvider {
    static var previews: some View {
        let asset = AssetSummaryData().assets[5]
        AssetSectionCardView(asset: asset)
    }
}
