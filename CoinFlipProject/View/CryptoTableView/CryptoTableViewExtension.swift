//
//  CryptoViewExtension.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/30/22.
//

import Foundation
import UIKit

extension CryptoTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.getCryptoCount()
    
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CryptoTableViewCell
        cell.backgroundColor = UIColor.clear
        //ViewModel methods to update TableViewCell at index.
        cell.nameLabel.text  =  vm.getCryptoName(index: indexPath.row)
        cell.priceChange.text = String(vm.getCryptoPriceChange(index: indexPath.row))
        cell.imageView?.imageFromServerURL(coinImage: vm.getCryptoImage(index: indexPath.row))
        return cell
        
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = DetailViewController()
        //Passed data at index to DetailView.
        vc.cryptoName.text = vm.getCryptoName(index: indexPath.row)
        vc.priceLabel.text = String(vm.getCryptoCurrentPrice(index: indexPath.row))
        vc.volumeLabel.text = String(vm.getCryptoVolume(index: indexPath.row))
        vc.low24Label.text = String(vm.getCryptoLow24(index: indexPath.row))
        vc.high24Label.text = String(vm.getCryptoHigh24(index: indexPath.row))
        vc.lastUpdatedLabel.text = vm.getCryptoLastUpdated(index: indexPath.row)
        vc.symbolLabel.text = vm.getCryptoSymbol(index: indexPath.row)
        vc.coinImage.imageFromServerURL(coinImage: vm.getCryptoImage(index: indexPath.row))
        self.navigationController?.pushViewController(vc, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
