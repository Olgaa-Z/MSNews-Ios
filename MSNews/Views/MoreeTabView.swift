//
//  OthersTabView.swift
//  MSNews
//
//  Created by visionet on 12/07/23.
//

import SwiftUI
import Firebase

struct MoreeTabView: View {
    @State private var showingAlert = false
    @State private var willMoveToNextScreen = false
    @State private var showAnotherView = false
    
    var body: some View {
        VStack{
            List{
                Button("Scanner Sample") {
                                showAnotherView = true
                }
                .sheet(isPresented: $showAnotherView) {
                    CodeScannerView()
                }
                
                Button("Test Crashlytics Firebase") {
                    fatalError("Crash was triggered")
                }
                Button("About") {
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("MSNews version 1.0"), message: Text("ITAMS - Mobile Security - Visionet"), dismissButton: .default(Text("Got it!")))
                }
                Link("Github", destination: URL(string: "https://github.com/Olgaa-Z/MSNews-Ios")!)
            }
        }
        
        
    }
}

struct OthersTabView_Previews: PreviewProvider {
    static var previews: some View {
        MoreeTabView()
    }
}
