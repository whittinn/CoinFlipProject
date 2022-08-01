//
//  Model.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/30/22.
//

import Foundation

struct CryptocurrencyModel: Decodable{
    
    let symbol: String?
    let name: String?
    let image: String?
    let currentPrice: Double?
    let totalVolume: Double?
    let high24H: Double?
    let low24H: Double?
    let priceChange24H: Double?
    let lastUpdated: String?
    
    enum CodingKeys : String, CodingKey {
        case symbol, name, image
        case currentPrice = "current_price"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case lastUpdated = "last_updated"
    }
}


