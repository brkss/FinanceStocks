//
//  StockCell.swift
//  FinanceStocks
//
//  Created by Brahim Berkasse on 12/12/2022.
//

import SwiftUI

struct StockCell: View {
    var stock: String;
    var description: String;
    var body: some View {
        VStack {
            HStack(alignment: .bottom){
                Text(stock)
                    .bold()
                    .font(.title2)
                Spacer()
                Text(description)
                    .font(.title3)
                    .foregroundColor(.gray)
            }
            .padding()
            Divider()
        }
    }
}

struct StockCell_Previews: PreviewProvider {
    static var previews: some View {
        StockCell(stock: "APPL", description: "Apple INC.")
    }
}
