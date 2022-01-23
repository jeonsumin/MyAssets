//
//  AssetBannerView.swift
//  MyAssets
//
//  Created by Terry on 2022/01/24.
//

import SwiftUI

struct AssetBannerView: View {
    let bannerList: [AssetBanner] = [
        AssetBanner(title: "공지사항", description: "추가된 공지사항을 확인하세요", backgroundColor: .red),
        AssetBanner(title: "주말 이벤트", description: "주말 이벤트 놓치지 마세요", backgroundColor: .yellow),
        AssetBanner(title: "깜짝 이벤트", description: "이벤트에 참여해보세요", backgroundColor: .blue),
        AssetBanner(title: "신학기 프로모션", description: "자세한 내용은 상세페이지를 확인하세요.", backgroundColor: .red)
    ]
    
    @State private var currentPage = 0
    var body: some View {
        let bannerCard = bannerList.map { BannerCard(banner: $0)}
        
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: bannerCard, currentPage: $currentPage)
            PageControl(numberOfPages: bannerList.count, currentPage: $currentPage)
                .frame(width: CGFloat(bannerCard.count * 18))
                .padding(.trailing)
        }
    }
}

struct AssetBannerView_Previews: PreviewProvider {
    static var previews: some View {
        AssetBannerView()
            .aspectRatio(5/2, contentMode: .fit)
    }
}
