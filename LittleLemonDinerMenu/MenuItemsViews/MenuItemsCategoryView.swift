//
//  MenuItemsCategoryView.swift
//  LittleLemonDinerMenu
//
//  Created by Iuliia Shmitko on 24/03/2024.
//

import SwiftUI

struct MenuItemsCategoryView: View {
    
    let columns = [ GridItem(.adaptive(minimum: 100)) ]
    private let category: [MenuItem]
    
    init(_ category:[MenuItem]) {
      self.category = category
    }
    
    var body: some View {
            Text(category[0].menuCategory.rawValue).font(.title2)
            LazyVGrid (columns: columns) {
                ForEach(category) {
                    food in
                    VStack {
                        NavigationLink {
                            MenuItemDetailsView(menuItem: food)
                        } label: {
                            Rectangle().fill(Color.black).frame(width: 100, height: 80)
                        }
                        Text(food.title)
                    }
                }
            }
            
        }

    }


struct MenuItemsCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        let category:[MenuItem] = [
                    MenuItem(price: 100.99, menuCategory: .food, ordersCount: 1000, title: "Food 1", ingredients: [.broccoli, .carrot]),
                    MenuItem(price: 200.99, menuCategory: .food, ordersCount: 1000, title: "Food 2", ingredients: [.broccoli, .carrot, .pasta])]
        MenuItemsCategoryView(category)
    }
}




