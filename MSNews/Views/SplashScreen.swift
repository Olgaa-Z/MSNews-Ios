//
//  SplashScreen.swift
//  MSNews
//
//  Created by visionet on 11/07/23.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive  : Bool = false
    @StateObject var articleBookmarkVM = ArticleBookmarkViewModel.shared
    
    var body: some View {
        ZStack{
            if self.isActive{
                ContentView()
                    .environmentObject(articleBookmarkVM)
            }else{
                Rectangle().background(Color.white)
                Image("itams-three")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.white)
                    .frame(width: 300, height: 300)
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                withAnimation{
                    self.isActive = true
                }
            }
        }
        .background(Color.white)
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
