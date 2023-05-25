//
//  TopMoversItemsView.swift
//  SwiftCoinTutorial
//
//  Created by Deepesh on 5/12/23.
//

import SwiftUI
import Kingfisher
struct TopMoversItemsView: View {
    let coin: Coin
    var body: some View {
        VStack(alignment: .leading){
            // image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // coin info
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text(coin.currentPrice.toCurrencey())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            //coin percentage change
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        }
    }
}

//struct TopMoversItemsView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemsView(coin: <#Coin#>)
//    }
//}
