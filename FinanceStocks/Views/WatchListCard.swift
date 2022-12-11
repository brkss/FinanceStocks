//
//  WatchListCard.swift
//  FinanceStocks
//
//  Created by Brahim Berkasse on 11/12/2022.
//

import SwiftUI

struct WatchListCard: View {
    var body: some View {
        VStack {
            HStack(alignment: .top){
                //AsyncImage(url: URL(string: //"https://logo.clearbit.com/apple.com"))
                Image(systemName: "appletv.fill")
                    .font(.system(size: 50))
                VStack(alignment: .leading){
                    Text("APPL")
                        .bold()
                        .font(.title3)
                    Text("Apple INC")
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text("1.47%")
                    .bold()
                    .foregroundColor(.lightGreen)
            }
            Spacer()
            HStack{
                Text("$112.58")
                    .bold()
                    .font(.title)
                Spacer()
                Text("Graph Here !")
            }
        }
        .padding()
        .padding(5)
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .stroke(.gray)
        )
    }
}

struct WatchListCard_Previews: PreviewProvider {
    static var previews: some View {
        WatchListCard()
    }
}
