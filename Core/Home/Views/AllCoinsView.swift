//
//  AllCoins.swift
//  SwiftCoinTutorial
//
//  Created by Deepesh on 5/12/23.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewMode: HomeViewModel
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coins")
                .font(.headline)
                .padding()
                
            HStack {
                Text("Coins")
                    
                Spacer()
                
                Text("Prices")
                    
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ForEach(viewMode.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
                
            }
        }
    }
}

