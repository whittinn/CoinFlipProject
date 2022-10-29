//
//  ViewModel.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/30/22.
//

import Foundation

 class ViewModel{
    //Optional array to store data from server.
    var myModel: [CryptocurrencyModel]?
    
    //Async funtion that provides data to TableView.
    func getCryptoInfo(completionHandler: @escaping ([CryptocurrencyModel]?)->()){
        
        APIHandler.shared.apiFetch { [weak self] data in
            guard let strongSelf = self else {return}
            
            switch data{
                
            case .success(let data):
                
                do{
                    //Decode data and store in array object.
                    let crytpoInfo = try JSONDecoder().decode([CryptocurrencyModel].self, from: data)
                    strongSelf.setData(myModel: crytpoInfo)
                    print("got data")
                    completionHandler(crytpoInfo)
                }catch let error{
                    print(error)
                }
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    //ViewModel methods prepares data stored in the array for view.
    func setData(myModel:[CryptocurrencyModel]?){
        self.myModel = myModel
    }
    
    func getCryptoSymbol(index:Int)->String{
        return myModel?[index].symbol ?? ""
    }
    
    func getCryptoCount()->Int{
        return myModel?.count ?? 0
    }
    
    func getCryptoName(index:Int)->String{
        return myModel?[index].name ?? ""
    }
    
    func getCryptoImage(index:Int)->String{
        return myModel?[index].image ?? ""
    }
    
    func getCryptoPriceChange(index:Int)->Double{
        return myModel?[index].priceChange24H ?? 0.00
    }
    
    func getCryptoCurrentPrice(index:Int)->Double{
        return myModel?[index].currentPrice ?? 0.00
    }
    
    func getCryptoVolume(index:Int)->Double{
        return myModel?[index].totalVolume ?? 0.00
    }
    
    func getCryptoHigh24(index:Int)->Double{
        return myModel?[index].high24H ?? 0.00
    }
    
    func getCryptoLow24(index:Int)->Double{
        return myModel?[index].low24H ?? 0.00
    }
    
    func getCryptoLastUpdated(index:Int)->String{
        return myModel?[index].lastUpdated ?? ""
    }
    //ViewModel functions that validate LoginFields.
    func validateUserNameFieldIsEmpty(text:String?)throws->Bool{
        
        guard let text = text, !text.isEmpty else {
            throw LoginFieldErrors.UserNameFieldNoText
        }
        return true
    }
    
    func validateUserNameFieldCount(text:String?)throws->Bool?{
        
        guard let text = text else {
            return false
        }
        
        if text.count < 7 {
            throw LoginFieldErrors.UserNameFieldNotEnoughCharacters
        }else{
            return true
        }
    }
    
    func validatePasswordFieldIsEmpty(text:String?)throws->Bool{
        
        guard let text = text, !text.isEmpty else {
            throw LoginFieldErrors.PasswordFieldNoText
        }
        return true
    }
    
    func validatePasswordFieldCount(text:String?)throws->Bool?{
        
        guard let text = text else {
            return false
        }
        
        if text.count < 7 {
            throw LoginFieldErrors.PasswordFieldNotEnoughCharacters
        }else{
            return true
        }
    }
     
}
