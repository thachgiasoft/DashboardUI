//
//  DetailView.swift
//  DashboardUI
//
//  Created by Cory D. Wiles on 2/24/20.
//  Copyright © 2020 Cory D. Wiles. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var viewState: DetailViewState
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Popular Products")
                .font(.system(.title))
                .bold()
                .foregroundColor(.black)
                .padding(.leading, 20)
                .padding(.top, 20)
            
            ScrollView(.horizontal) {
                
                HStack(spacing: 20) {
                    
                    ProductView(image: "Couch",
                                productName: "Amazing Couch",
                                unitsSold: "986 Units Sold")
                    
                    ProductView(image: "Cookware",
                                productName: "10 pc Cookware",
                                unitsSold: "1,204 Units sold")
                    
                    ProductView(image: "OutdoorLight",
                                productName: "Outdoor Lighting",
                                unitsSold: "545 Units sold")
                    
                    ProductView(image: "CakeStand",
                                productName: "3 tier Cake Stand",
                                unitsSold: "334 Units Sold")
                }
            }
            .disabled(self.viewState == .closed)
            .padding([.trailing, .leading])
            
            Text("Loyal Buyers")
                .font(.system(.title))
                .bold()
                .foregroundColor(.black)
                .padding(.top)
                .padding(.leading, 20)
            
            ScrollView {
                BuyerRowView(image: "Person1", name: "Erin Wiles")
                BuyerRowView(image: "Person2", name: "McKinna Wiles")
                BuyerRowView(image: "Person3", name: "Cory Wiles")
            }
            
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewState: .constant(.opened))
    }
}
