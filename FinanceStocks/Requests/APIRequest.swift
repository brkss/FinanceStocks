//
//  APIRequest.swift
//  FinanceStocks
//
//  Created by Brahim Berkasse on 12/12/2022.
//

import Foundation


class APIRequest {
    
    static let instance = APIRequest()
    
    // varibles
    private var url = "https://finnhub.io/api/v1/";
    private var token = "&token=cebke0qad3ib1l38mrpgcebke0qad3ib1l38mrq0";
    
    
    public func getSymboleQuote(symbol: String){
        let query = "quote?symbol=\(symbol)"
        let url = URL(string: url + query + token)
      
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("error accured getting quote : \(error)");
                    return
                }
                guard let quoteData = data else {
                    print("symbol search data not valid !")
                    return;
                }
                let returnedQuotes = try? JSONDecoder().decode(Quote.self, from: quoteData)
                print(returnedQuotes)
            }
            task.resume()
        }
    }
}
