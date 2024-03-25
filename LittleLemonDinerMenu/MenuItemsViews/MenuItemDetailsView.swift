//
//  MenuItemDetailsView.swift
//  LittleLemonDinerMenu
//
//  Created by Iuliia Shmitko on 20/03/2024.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let menuItem: MenuItem
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(alignment: .center, spacing: 5) {
                    Image("Little Lemon logo").resizable().scaledToFit().frame(width: 200, height: 400)
                    Text("Price:").bold()
                    Text( "\(menuItem.price.formatted())")
                    Text("Ordered:").bold()
                    Text("\(menuItem.ordersCount)")
                    Text("Ingredients:").bold()
                        ForEach(menuItem.ingredients, id: \.self) {
                            ingredient in
                            Text("\(ingredient.rawValue)").textCase(.lowercase)
                    }
                }
            }.navigationTitle(menuItem.title).padding()
        }
        
    }
}
    
struct MenuItemDetailsView_Previews: PreviewProvider {
        static var previews: some View {
            let menuItem = MenuItem(price: 100.99, menuCategory: .food, ordersCount: 1000, title: "Food 1", ingredients: [.broccoli, .carrot])
            MenuItemDetailsView(menuItem: menuItem)
        }
    }

