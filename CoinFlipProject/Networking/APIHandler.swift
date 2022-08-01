//
//  APIHandler.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/30/22.
//

import Foundation

public class APIHandler{
    //Singleton property that provides access to API Call.
    static let shared = APIHandler()
    private init () {}
    //Async function that passes data to ViewModel. Uses generic Result type with enum cases of success and failure.
    public func apiFetch(completionHandler: @escaping (Result<Data,Error>)->()){
        
        guard let coinsURL = URL(string: "\(Constant.baseURL.rawValue)\(Constant.apiKey.rawValue)") else { return }
        
        URLSession.shared.dataTask(with: coinsURL) { [weak self] data, response, error in
            
            guard let _ = self else {return}
            if let error = error {
                completionHandler(.failure(error))
            }
            
            if let data = data {
                completionHandler(.success(data))
            }
            
        }.resume()
    }
}
