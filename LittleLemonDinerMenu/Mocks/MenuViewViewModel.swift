//
//  MenuViewViewModel.swift
//  LittleLemonDinerMenu
//
//  Created by Iuliia Shmitko on 21/03/2024.
//

import Foundation

class MenuViewViewModel: ObservableObject, Identifiable {
    @Published var foodMenuItems: [MenuItem] = [
        MenuItem(price: 50.99, menuCategory: .food, ordersCount: 100, title: "Food 1", ingredients: [.broccoli, .carrot]),
        MenuItem(price: 100.99, menuCategory: .food, ordersCount: 200, title: "Food 2", ingredients: [.broccoli, .carrot, .pasta]),
        MenuItem(price: 150.99, menuCategory: .food, ordersCount: 300, title: "Food 3", ingredients: [.broccoli, .carrot, .pasta, .sauce, .spinach]),
        MenuItem(price: 200.99, menuCategory: .food, ordersCount: 400, title: "Food 4", ingredients: [.pasta, .sauce]),
        MenuItem(price: 250, menuCategory: .food, ordersCount: 500, title: "Food 5", ingredients: [.pasta, .spinach, .broccoli]),
        MenuItem(price: 300, menuCategory: .food, ordersCount: 600, title: "Food 6", ingredients: [.pasta, .spinach, .carrot]),
        MenuItem(price: 350, menuCategory: .food, ordersCount: 700, title: "Food 7", ingredients: [.spinach, .broccoli]),
        MenuItem(price: 400, menuCategory: .food, ordersCount: 800, title: "Food 8", ingredients: [.carrot, .spinach, .sauce]),
        MenuItem(price: 450, menuCategory: .food, ordersCount: 900, title: "Food 9", ingredients: [.broccoli, .sauce]),
        MenuItem(price: 500, menuCategory: .food, ordersCount: 1000, title: "Food 10", ingredients: [.sauce, .broccoli, .carrot]),
        MenuItem(price: 550, menuCategory: .food, ordersCount: 1100, title: "Food 11", ingredients: [.pasta, .sauce, .broccoli]),
        MenuItem(price: 600, menuCategory: .food, ordersCount: 1200, title: "Food 12", ingredients: [.spinach, .broccoli, .pasta, .carrot, .sauce])
        ]
    @Published var drinkMenuItems: [MenuItem] = [
        MenuItem(price: 10, menuCategory: .drink, ordersCount: 100, title: "Drink 1", ingredients: [.broccoli, .carrot]),
        MenuItem(price: 20, menuCategory: .drink, ordersCount: 200, title: "Drink 2", ingredients: [.broccoli, .carrot, .pasta]),
        MenuItem(price: 30, menuCategory: .drink, ordersCount: 300, title: "Drink 3", ingredients: [.broccoli, .carrot, .pasta, .sauce]),
        MenuItem(price: 40, menuCategory: .drink, ordersCount: 400, title: "Drink 4", ingredients: [.pasta, .sauce]),
        MenuItem(price: 50, menuCategory: .drink, ordersCount: 500, title: "Drink 5", ingredients: [.pasta, .spinach, .broccoli]),
        MenuItem(price: 60, menuCategory: .drink, ordersCount: 600, title: "Drink 6", ingredients: [.pasta, .spinach, .carrot]),
        MenuItem(price: 70, menuCategory: .drink, ordersCount: 700, title: "Drink 7", ingredients: [.spinach, .broccoli]),
        MenuItem(price: 80, menuCategory: .drink, ordersCount: 800, title: "Drink 8", ingredients: [.carrot, .spinach, .sauce]),
    ]
    @Published var dessertMenuItems: [MenuItem] = [
        MenuItem(price: 110, menuCategory: .dessert, ordersCount: 100, title: "Dessert 1", ingredients: [.broccoli, .carrot]),
        MenuItem(price: 120, menuCategory: .dessert, ordersCount: 200, title: "Dessert 2", ingredients: [.broccoli, .carrot, .pasta]),
        MenuItem(price: 130, menuCategory: .dessert, ordersCount: 300, title: "Dessert 3", ingredients: [.broccoli, .carrot, .pasta, .sauce]),
        MenuItem(price: 140, menuCategory: .dessert, ordersCount: 400, title: "Dessert 4", ingredients: [.pasta, .sauce]),]
}
