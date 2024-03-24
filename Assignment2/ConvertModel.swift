//
//  ConvertModel.swift
//  Assignment2
//
//  Created by Amenda Kang on 3/23/24.
//

import Foundation

struct ConvertModel : Identifiable {
    let id = UUID()
    var isFront : Bool = true
    let cardContent : CurrencyItemModel
}

struct CryptoConvertModel : Identifiable {
    let id = UUID()
    var cryptoContent : CryptoItemModel
}


struct CurrencyItemModel {
    let currencyName : String
    let currencyCode : String
    let countryFlag : String
    let multiplier : Double
}

struct CryptoItemModel {
    let cryptoName : String
    let multiplier : Double
    var cryptoAmt : Double
}
