//
//  BankAccountView.swift
//  MyAssets
//
//  Created by Terry on 2022/01/25.
//

import SwiftUI

struct BankAccountView: View {
    @Environment(\.presentationMode) var presentationMode
     var body: some View {
         ZStack(alignment: .topLeading) {
             Color.yellow.ignoresSafeArea()
                 .navigationBarBackButtonHidden(true)
                 .navigationBarHidden(true)
             
             Button(action: {
                 presentationMode.wrappedValue.dismiss()
             }, label: {
                 Image(systemName: "xmark")
                     .imageScale(.large)
                     .padding()
             })
             .accentColor(.white)
         }
     }
}

struct BankAccountView_Previews: PreviewProvider {
    static var previews: some View {
        BankAccountView()
    }
}
