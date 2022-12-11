//
//  PortfolioCard.swift
//  FinanceStocks
//
//  Created by Brahim Berkasse on 11/12/2022.
//

import SwiftUI

struct PortfolioCard: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Portfolio Value")
                .foregroundColor(Color.gray)
                .font(.title2)
            HStack(alignment: .top) {
                Text("$982.3")
                    .bold()
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                Text("2.4%")
                    .foregroundColor(Color.lightGreen)
                    .bold()
                    .font(.title3)
            }
            HStack{
                Button(action: {
                    
                }){
                    Text("Deposite")
                        .foregroundColor(.white)
                        .bold()
                }
                .padding()
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.lightGreen)
                )
                Spacer()
                Button(action: {
                    
                }){
                    Text("Withdraw")
                        .foregroundColor(.white)
                        .bold()
                }
                .padding()
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray)
                )
            }
            
        }
        .padding()
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.darkBlue)
        )
    }
}

struct PortfolioCard_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioCard()
            .padding()
    }
}
