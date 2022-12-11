//
//  Header.swift
//  FinanceStocks
//
//  Created by Brahim Berkasse on 11/12/2022.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            Text("My Stocks")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color.darkBlue)
            Spacer()
            Button(action: {
                print("tapped search")
            }){
                Image(systemName: "magnifyingglass.circle.fill")
                    .accentColor(Color.darkBlue)
                    .font(.system(size: 40))
            }
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
            .padding()
    }
}
