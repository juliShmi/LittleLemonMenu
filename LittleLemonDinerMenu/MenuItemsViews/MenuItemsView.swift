//
//  MenuItemsView.swift
//  LittleLemonDinerMenu
//
//  Created by Iuliia Shmitko on 20/03/2024.
//

import SwiftUI

struct MenuItemsView: View {
    
    @ObservedObject private var menu = MenuViewViewModel()
    
    let columns = [ GridItem(.adaptive(minimum: 100)) ]
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 8) {
                    MenuItemsCategoryView(menu.foodMenuItems)
                    MenuItemsCategoryView(menu.drinkMenuItems)
                    MenuItemsCategoryView(menu.dessertMenuItems)
                }
                        .toolbar {
                            NavigationLink(destination: MenuItemsOptionView(), label: {
                                Image(systemName: "slider.horizontal.3")
                            })
                        }.navigationTitle("Menu")
                        .padding()
                }.padding()
            }.navigationBarBackButtonHidden(true)
        }
}


#Preview {
    MenuItemsView()
}


//Image(systemName: "slider.horizontal.3")
