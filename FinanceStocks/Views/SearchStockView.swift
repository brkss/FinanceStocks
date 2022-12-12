//
//  SearchStockView.swift
//  FinanceStocks
//
//  Created by Brahim Berkasse on 12/12/2022.
//

import SwiftUI

struct SearchStockView: View {
    @State private var query: String = "";
    var body: some View {
        VStack{
            TextField("Stock tiker symobl", text: $query)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color.darkBlue)
                )
                .bold()
                .padding()
                .textInputAutocapitalization(.never)
            Divider()
            ScrollView {
                StockCell(stock:"APPL", description: "Apple INC")
                StockCell(stock:"APPL", description: "Apple INC")
                StockCell(stock:"APPL", description: "Apple INC")
                StockCell(stock:"APPL", description: "Apple INC")
                StockCell(stock:"APPL", description: "Apple INC")
            }
            
            
            Spacer()
            
            
        }
    }
}

struct SearchStockView_Previews: PreviewProvider {
    static var previews: some View {
        SearchStockView()
    }
}
