//
//  NavigationBarWithButton.swift
//  MyAssets
//
//  Created by Terry on 2022/01/20.
//

import SwiftUI

struct NavigationBarWithButton: ViewModifier {
    @State private var showModal = false
    var title: String = ""
    func body(content: Content) -> some View {
        return content
            .navigationBarItems(leading: Text(title).font(.system(size: 24, weight: .bold)).padding()
                                , trailing:
                Button(action: {
                    self.showModal = true
                }, label: {
                    Image(systemName: "plus")
                    Text("자산 추가")
                        .font(.system(size: 12))
                        
                }
                )
                    .sheet(isPresented: self.$showModal){
                        BankAccountView()
                    }
                    .accentColor(.black)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10 ))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black)
                    )
            )
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                let appearance = UINavigationBarAppearance()
                appearance.configureWithTransparentBackground()
                appearance.backgroundColor = UIColor(white: 1, alpha: 0.5)
                UINavigationBar.appearance()
                    .standardAppearance = appearance
                UINavigationBar.appearance()
                    .compactAppearance = appearance
                UINavigationBar.appearance()
                    .scrollEdgeAppearance = appearance
            }
        
    }
    
    
}
extension View {
    func navigationBarWithButtonStyle(_ title : String) -> some View {
        return self.modifier(NavigationBarWithButton(title: title))
    }
}

struct NavigationBarWithButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Color.gray.edgesIgnoringSafeArea(.all)
                .navigationBarWithButtonStyle("내 자산")
        }
        //        NavigationBarWithButton()
    }
}
