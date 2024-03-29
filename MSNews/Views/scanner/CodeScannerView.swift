//
//  CodeScannerView.swift
//  MSNews
//
//  Created by visionet on 12/07/23.
//

import SwiftUI

struct CodeScannerView: View {
    @ObservedObject var viewModel = ScannerViewModel()
    
    var body: some View {
        ZStack {
            QrCodeScannerView()
            .found(r: self.viewModel.onFoundQrCode)
            .torchLight(isOn: self.viewModel.torchIsOn)
            .interval(delay: self.viewModel.scanInterval)
            
                   VStack {
                       VStack {
                           Text("Keep scanning for QR-codes")
                               .font(.subheadline)
                           Text(self.viewModel.lastQrCode)
                               .bold()
                               .lineLimit(5)
                               .padding()
                       }
                       .padding(.vertical, 20)
                       
                       Spacer()
                       HStack {
                           Button(action: {
                               self.viewModel.torchIsOn.toggle()
                           }, label: {
                               Image(systemName: self.viewModel.torchIsOn ? "bolt.fill" : "bolt.slash.fill")
                                   .imageScale(.large)
                                   .foregroundColor(self.viewModel.torchIsOn ? Color.yellow : Color.blue)
                                   .padding()
                           })
                       }
                       .background(Color.white)
                       .cornerRadius(10)
                       
                   }.padding()
               }
    }
}

struct CodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        CodeScannerView()
    }
}
