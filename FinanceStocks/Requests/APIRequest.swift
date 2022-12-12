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
    
    
    public func getSymboleQuote(symbol: String, handler: @escaping(_ returnedQuotes: Quote?) -> ()){
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
                handler(returnedQuotes)
            }
            task.resume()
        }
    }
    
    public func getSymbolLookup(searchQuery: String){
        let query: String = "search?q=\(searchQuery)"
        print("q : \(query)");
        let url = URL(string: url + query + token)
        
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("error accured \(error)");
                    return;
                }
                guard let searchData = data else {
                    print("symbolesearcg data not valid !")
                    return;
                }
                let returnedSymbols = try? JSONDecoder().decode(StockSymbolSearch.self, from: searchData)
                print(returnedSymbols)
            }
            task.resume()
        }
    }
        
    public func getCandles(symbol: String, hourLength: Int){
        let endDate = Int(Date().timeIntervalSince1970)
        let startDate = Int(Calendar.current.date(byAdding: .day, value: -(hourLength), to: Date())?.timeIntervalSince1970 ?? Date().timeIntervalSince1970)
            
        let q = "stock/candle?symbol=\(symbol)&resolution=5&from=\(startDate)&to=\(endDate)"
        let url = URL(string: url + q + token);
        if let url = url {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("error accured getting calndles: \(error)")
                    return;
                }
                guard let candlesData = data else {
                    print("invalid candles data !");
                    return;
                }
                let returnedCandles = try? JSONDecoder().decode(Candles.self, from: candlesData)
                print(returnedCandles)
            }
            task.resume()
        }
    }
}
