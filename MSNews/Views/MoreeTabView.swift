//
//  OthersTabView.swift
//  MSNews
//
//  Created by visionet on 12/07/23.
//

import SwiftUI
import Firebase

struct MoreeTabView: View {
    var body: some View {
        Button("Crash") {
          fatalError("Crash was triggered")
        }
    }
}

struct OthersTabView_Previews: PreviewProvider {
    static var previews: some View {
        MoreeTabView()
    }
}
