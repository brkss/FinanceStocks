//
//  JSONDecoders.swift
//  FinanceStocks
//
//  Created by Brahim Berkasse on 12/12/2022.
//

import Foundation



struct Quote : Decodable {
    let c: Double;
    let d: Double;
    let dp: Double;
    let h: Double;
    let l: Double;
    let o: Double;
    let pc: Double;
    let t: Double;
}
