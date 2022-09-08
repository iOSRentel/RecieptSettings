//
//  ContentView.swift
//  sheetButton
//
//  Created by Boris Zinovyev on 06.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ReceiptView()
                .navigationTitle("iReciept")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11 Pro")
            ContentView()
                .previewDevice("iPhone 11 Pro")
                .preferredColorScheme(.dark)
        }
    }
}

