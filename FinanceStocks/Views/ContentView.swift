//
//  ContentView.swift
//  FinanceStocks
//
//  Created by Brahim Berkasse on 11/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            ScrollView(showsIndicators: false) {
                PortfolioCard()
                WatchList()
            }
            Spacer()
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
