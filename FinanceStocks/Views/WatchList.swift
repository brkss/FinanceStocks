//
//  WatchList.swift
//  FinanceStocks
//
//  Created by Brahim Berkasse on 11/12/2022.
//

import SwiftUI

struct WatchList: View {
    var body: some View {
            VStack {
                HStack{
                    Text("Watchlist")
                        .foregroundColor(.darkBlue)
                        .bold()
                        .font(.title)
                    Spacer()
                }
                WatchListCard()
                WatchListCard()
                WatchListCard()
                WatchListCard()
                WatchListCard()
                WatchListCard()
                
            }
    }
}

struct WatchList_Previews: PreviewProvider {
    static var previews: some View {
        WatchList()
    }
}
