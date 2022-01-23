//
//  AssetView.swift
//  MyAssets
//
//  Created by Terry on 2022/01/21.
//

import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing:30){
                    Spacer()
                    AssetMenuGridView()
                    AssetBannerView()
                        .aspectRatio(5/2, contentMode: .fit)
                }
            }
            .background(Color.gray.opacity(0.2))
            .navigationBarWithButtonStyle("내 자산")
        }
    }
}

struct AssetView_Previews: PreviewProvider {
    static var previews: some View {
        AssetView()
    }
}
