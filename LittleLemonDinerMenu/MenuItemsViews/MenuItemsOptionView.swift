//
//  MenuItemsOptionView.swift
//  LittleLemonDinerMenu
//
//  Created by Iuliia Shmitko on 20/03/2024.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 3) {
            NavigationView {
                List {
                    Section {
                        ForEach(MenuCategory.allCases, id: \.self) { category in
                            Text(category.rawValue)
                        }
                    } header: {
                        Text("SELECTED CATEGORIES")
                    }
                    Section {
                        ForEach(SortBy.allCases, id: \.self) { parameter in
                            Text(parameter.rawValue)
                        }
                    } header: {
                        Text("SORTED BY")
                    }
                }
                .navigationTitle("Filter")
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar{
                    NavigationLink("Done", destination: MenuItemsView()).bold()
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MenuItemsOptionView()
}
