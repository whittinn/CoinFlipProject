//
//  CoinFlipProjectTests.swift
//  CoinFlipProjectTests
//
//  Created by Nathaniel Whittington on 7/29/22.
//

import XCTest
@testable import CoinFlipProject

class CoinFlipProjectTests: XCTestCase {
    
    var vm: ViewModel?
    
    override func setUpWithError() throws {
        vm = ViewModel()
        
        vm?.myModel = [CryptocurrencyModel(symbol: "coin1", name: "firstCoin", image: ".url", currentPrice: 1.00, totalVolume: 1.00, high24H: 2.00, low24H: 1.00, priceChange24H: 1.00, lastUpdated: "today"), CryptocurrencyModel(symbol: "coin2", name: "secondCoin", image: ".url2", currentPrice: 2.00, totalVolume: 2.00, high24H: 2.00, low24H: 1.00, priceChange24H: 2.00, lastUpdated: "yesterday")]
    }
    
    override func tearDownWithError() throws {
        vm = nil
    }
    
    func testGetCryptoSymbol(){
        XCTAssertEqual(vm?.getCryptoSymbol(index: 0), "coin1")
    }
    
    func testGetCryptoName(){
        XCTAssertEqual(vm?.getCryptoName(index: 0), "firstCoin")
    }
    
    func testGetCryptoPrice(){
        XCTAssertEqual(vm?.getCryptoPriceChange(index: 0), 1.00)
    }
    
    func testGetCryptoVolume(){
        XCTAssertEqual(vm?.getCryptoVolume(index: 0), 1.00)
    }
    
    func testGetCryptoHigh24(){
        XCTAssertEqual(vm?.getCryptoHigh24(index: 0), 2.00)
    }
    
    func testGetCryptoLow24(){
        XCTAssertEqual(vm?.getCryptoLow24(index: 0), 1.00)
    }
    
    func testGetPriceChange(){
        XCTAssertEqual(vm?.getCryptoPriceChange(index: 0), 1.00)
    }
    
    func testGetLastUpdated(){
        XCTAssertEqual(vm?.getCryptoLastUpdated(index: 0), "today")
    }
    
    func testGetArrayCount(){
        XCTAssertEqual(vm?.myModel?.count, 2)
    }
    
    func testIfUserNameFieldHasText(){
        XCTAssertTrue(((try vm?.validateUserNameFieldIsEmpty(text: "1")) != nil))
    }
    
    func testIfUserNameFieldHasCount(){
        XCTAssertTrue(((try vm?.validateUserNameFieldCount(text: "1234567")) != nil))
    }
    
    func testIfPasswordFieldHasText(){
        XCTAssertTrue(((try vm?.validatePasswordFieldIsEmpty(text: "1")) != nil))
    }
    
    func testIfPasswordFieldHasCount(){
        XCTAssertTrue(((try vm?.validatePasswordFieldCount(text: "1234567")) != nil))
    }
    
    func testfetchWeather() {
        
        let expectation = expectation(description: "fetchWeather")
        
        vm?.getCryptoInfo(completionHandler: { data in
            XCTAssertNotNil(data)
            expectation.fulfill()
        })
        wait(for: [expectation], timeout: 5)
    }
    
}
