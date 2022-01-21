//
//  ContentView.swift
//  MyAssets
//
//  Created by Terry on 2022/01/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tap = .asset
    
    enum Tap {
        case asset
        case recommend
        case alert
        case setting
    }
    var body: some View {
        TabView(selection: $selection){
            AssetView()
                .tabItem {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("자산")
                }
                .tag(Tap.asset)
            Color.blue
                .tabItem {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("추천")
                }
                .tag(Tap.recommend)
            Color.yellow
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("알림")
                }
                .tag(Tap.alert)
            Color.red
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("설정")
                }
                .tag(Tap.setting)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
