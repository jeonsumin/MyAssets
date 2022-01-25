//
//  AssetMenuGridView.swift
//  MyAssets
//
//  Created by Terry on 2022/01/21.
//

import SwiftUI

struct AssetMenuGridView: View {
    @State var isShow = false
    let menuList: [[AssetMenu]] = [
        [.creditScore, .bankAccount,.investment,.loan],
        [.insurance,.creditCard,.cash,.realEstate]
    ]
    var body: some View {
        VStack(spacing: 40 ){
            ForEach(menuList, id: \.self) { row in
                //각각의 행을 가져오고
                HStack(spacing: 40){
                    //가져온 각각의 행에서 아이템들을 뿌려준다.
                    ForEach(row) { menu in
                        
                        Button(menu.id, action: {self.isShow = true })
                            .buttonStyle(AssetMenuButtonStyle(menu: menu))
                            .fullScreenCover(isPresented: self.$isShow,content: {
                                BankAccountView()
                            })
                        
//                        Button("") {
//                            print("\(menu.title) 버튼 tapped")
//                        }
//                        .buttonStyle(AssetMenuButtonStyle(menu: menu))
                    }
                }
            }
        }
    }
}

struct AssetMenuGridView_Previews: PreviewProvider {
    static var previews: some View {
        AssetMenuGridView()
    }
}
