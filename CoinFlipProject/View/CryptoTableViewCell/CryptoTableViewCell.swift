//
//  CryptoTableViewCell.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/30/22.
//

import UIKit

public class CryptoTableViewCell: UITableViewCell {
    
    
    var nameLabel : UILabel = {
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textColor = UIColor.black
        nameLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 15)
        return nameLabel
    }()
    
    private let viewButton: UIButton = {
        let viewButton = UIButton()
        viewButton.translatesAutoresizingMaskIntoConstraints = false
        viewButton.backgroundColor = UIColor.gray
        viewButton.setTitle("View", for: .normal)
        return viewButton
    }()
    
    private let coinImage: UIImageView = {
        let coinImage = UIImageView()
        coinImage.translatesAutoresizingMaskIntoConstraints = false
        return coinImage
    }()
    
    private let price: UILabel = {
        let price = UILabel()
        price.translatesAutoresizingMaskIntoConstraints = false
        price.textColor = UIColor.blue
        price.text = "%"
        price.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.subheadline)
        return price
    }()
    
    let priceChange: UILabel = {
        let priceChange = UILabel()
        priceChange.translatesAutoresizingMaskIntoConstraints = false
        priceChange.textColor = UIColor.black
        priceChange.font = UIFont.boldSystemFont(ofSize: 12)
        priceChange.font = priceChange.font.withSize(13)
        return priceChange
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //Function add subviews to TableViewCell.
        addSubViewLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubViewLayout(){
        //Added subviews to contentView of TableViewCell.
        contentView.addSubview(nameLabel)
        contentView.addSubview(coinImage)
        contentView.addSubview(price)
        contentView.addSubview(priceChange)
        
        coinImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 12.0).isActive = true
        coinImage.heightAnchor.constraint(equalToConstant: 30).isActive = true
        coinImage.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 12).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 12.0).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nameLabel.leftAnchor.constraint(greaterThanOrEqualTo: coinImage.leftAnchor, constant: 75).isActive = true
        
        price.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 12.0).isActive = true
        price.heightAnchor.constraint(equalToConstant: 30).isActive = true
        price.leftAnchor.constraint(greaterThanOrEqualTo: nameLabel.rightAnchor, constant: 10).isActive = true
        
        priceChange.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 12.0).isActive = true
        priceChange.heightAnchor.constraint(equalToConstant: 30).isActive = true
        priceChange.leftAnchor.constraint(greaterThanOrEqualTo: price.rightAnchor, constant: 10).isActive = true
        
    }
    
    
}
