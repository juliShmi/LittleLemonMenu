//
//  MenuItem.swift
//  LittleLemonDinerMenu
//
//  Created by Iuliia Shmitko on 21/03/2024.
//

import Foundation
import SwiftUI


protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var ingredients: [Ingredient] { get set }
    
}

struct MenuItem: Identifiable, MenuItemProtocol {
    let id = UUID()
    var price: Double
    var menuCategory: MenuCategory
    var ordersCount: Int
    var title: String
    var ingredients: [Ingredient]
}
