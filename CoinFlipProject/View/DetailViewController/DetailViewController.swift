//
//  DetailViewController.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/31/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    var cryptoName: UILabel = {
        let cryptoName = UILabel()
        cryptoName.translatesAutoresizingMaskIntoConstraints = false
        cryptoName.font = UIFont(name:"HelveticaNeue-Bold", size: 20)
        return cryptoName
    }()
    
    var priceLabel: UILabel = {
        let priceLabel = UILabel()
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        return priceLabel
    }()
    
    private var price: UILabel = {
        let price = UILabel()
        price.translatesAutoresizingMaskIntoConstraints = false
        price.text = "Current Price:"
        return price
    }()
    
    private var volume: UILabel = {
        let volume = UILabel()
        volume.translatesAutoresizingMaskIntoConstraints = false
        volume.text = "Trading Volume:"
        return volume
    }()
    
    var volumeLabel: UILabel = {
        let volumeLabel = UILabel()
        volumeLabel.translatesAutoresizingMaskIntoConstraints = false
        return volumeLabel
    }()
    
    private var high24 : UILabel = {
        let high24 = UILabel()
        high24.translatesAutoresizingMaskIntoConstraints = false
        high24.text = "High 24H:"
        return high24
    }()
    
    var high24Label: UILabel = {
        let high24Label = UILabel()
        high24Label.translatesAutoresizingMaskIntoConstraints = false
        return high24Label
    }()
    
    private var low24 : UILabel = {
        let low24 = UILabel()
        low24.translatesAutoresizingMaskIntoConstraints = false
        low24.text = "Low 24H:"
        return low24
    }()
    
    var low24Label: UILabel = {
        let low24Label = UILabel()
        low24Label.translatesAutoresizingMaskIntoConstraints = false
        return low24Label
    }()
    
    private var lastUpdated : UILabel = {
        let lastUpdated = UILabel()
        lastUpdated.translatesAutoresizingMaskIntoConstraints = false
        lastUpdated.text = "Last Updated:"
        return lastUpdated
    }()
    
    var lastUpdatedLabel: UILabel = {
        let lastUpdatedLabel = UILabel()
        lastUpdatedLabel.translatesAutoresizingMaskIntoConstraints = false
        lastUpdatedLabel.font = lastUpdatedLabel.font.withSize(15)
        return lastUpdatedLabel
    }()
    
    private var symbol : UILabel = {
        let symbol = UILabel()
        symbol.translatesAutoresizingMaskIntoConstraints = false
        symbol.text = "Symbol:"
        return symbol
    }()
    
    var symbolLabel: UILabel = {
        let symbolLabel = UILabel()
        symbolLabel.translatesAutoresizingMaskIntoConstraints = false
        return symbolLabel
    }()
    
    var coinImage: UIImageView = {
        let coinImage = UIImageView()
        coinImage.translatesAutoresizingMaskIntoConstraints = false
        return coinImage
    }()
    //Added UIView for design purposes.
    private let layerView: UIView = {
        let layerView = UIView(frame: CGRect(x: 0, y: 150, width: UIScreen.main.bounds.width, height: 500))
        layerView.backgroundColor = UIColor.lightGray
        layerView.layer.cornerRadius = 25
        layerView.layer.borderWidth = 2
        layerView.layer.borderColor = UIColor.black.cgColor
        return layerView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        addSubViews()
    }
    
    func addSubViews(){
        //Added subview objects to UIView.
        layerView.addSubview(priceLabel)
        layerView.addSubview(price)
        layerView.addSubview(volume)
        layerView.addSubview(volumeLabel)
        layerView.addSubview(high24)
        layerView.addSubview(high24Label)
        layerView.addSubview(low24)
        layerView.addSubview(low24Label)
        layerView.addSubview(lastUpdated)
        layerView.addSubview(lastUpdatedLabel)
        layerView.addSubview(symbol)
//        layerView.addSubview(symbolLabel)
//        layerView.addSubview(coinImage)
        view.addSubview(cryptoName)
        view.addSubview(layerView)
        
        //SubView Constraints
        cryptoName.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        cryptoName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cryptoName.widthAnchor.constraint(equalToConstant: 200).isActive = true
        cryptoName.textAlignment = .center
        
        price.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 30).isActive = true
        price.leftAnchor.constraint(equalTo: layerView.leftAnchor, constant: 20).isActive = true
        price.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        priceLabel.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 30).isActive = true
        priceLabel.leftAnchor.constraint(greaterThanOrEqualTo: price.leftAnchor, constant: 130).isActive = true
        priceLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        volume.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 60).isActive = true
        volume.leftAnchor.constraint(equalTo: layerView.leftAnchor, constant: 20).isActive = true
        volume.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        volumeLabel.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 60).isActive = true
        volumeLabel.leftAnchor.constraint(greaterThanOrEqualTo: volume.leftAnchor, constant: 130).isActive = true
        volumeLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        high24.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 90).isActive = true
        high24.leftAnchor.constraint(equalTo: layerView.leftAnchor, constant: 20).isActive = true
        high24.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        high24Label.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 90).isActive = true
        high24Label.leftAnchor.constraint(greaterThanOrEqualTo: high24.leftAnchor, constant: 130).isActive = true
        high24Label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        low24.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 120).isActive = true
        low24.leftAnchor.constraint(equalTo: layerView.leftAnchor, constant: 20).isActive = true
        low24.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        low24Label.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 120).isActive = true
        low24Label.leftAnchor.constraint(greaterThanOrEqualTo: low24.leftAnchor, constant: 130).isActive = true
        low24Label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        lastUpdated.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 150).isActive = true
        lastUpdated.leftAnchor.constraint(equalTo: layerView.leftAnchor, constant: 20).isActive = true
        lastUpdated.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        lastUpdatedLabel.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 150).isActive = true
        lastUpdatedLabel.leftAnchor.constraint(greaterThanOrEqualTo: lastUpdated.leftAnchor, constant: 130).isActive = true
        lastUpdatedLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        symbol.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 180).isActive = true
        symbol.leftAnchor.constraint(equalTo: layerView.leftAnchor, constant: 20).isActive = true
        symbol.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
//        symbolLabel.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 180).isActive = true
//        symbolLabel.leftAnchor.constraint(greaterThanOrEqualTo: symbol.leftAnchor, constant: 130).isActive = true
//        symbolLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
//
//        coinImage.topAnchor.constraint(equalTo: layerView.topAnchor, constant: 220).isActive = true
//        coinImage.centerXAnchor.constraint(equalTo: layerView.centerXAnchor).isActive = true
//        coinImage.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        
    }
    
    
    
    
}
