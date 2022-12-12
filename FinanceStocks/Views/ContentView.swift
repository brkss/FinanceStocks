//
//  ContentView.swift
//  FinanceStocks
//
//  Created by Brahim Berkasse on 11/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingStockSearch : Bool = false;
    var body: some View {
        VStack {
            Header(showSheet: $isShowingStockSearch)
            ScrollView(showsIndicators: false) {
                PortfolioCard()
                WatchList()
            }
            Spacer()
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .sheet(isPresented: $isShowingStockSearch){
            Text("Search !")
                .presentationDetents([.height(UIScreen.main.bounds.height / 2)])
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
