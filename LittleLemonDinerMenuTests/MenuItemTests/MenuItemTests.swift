//
//  MenuItemTests.swift
//  LittleLemonDinerMenuTests
//
//  Created by Iuliia Shmitko on 25/03/2024.
//

import XCTest
@testable import LittleLemonDinerMenu

//Test menu item title, when initializing with a title, expect the menu item title to equal the initialized value.


final class MenuItemTests: XCTestCase {
    
    let foodMenuItem = MenuViewViewModel().foodMenuItems
    
    func test_initializeMenuItem_addTitle() {
        
        let expectedValue = "Food 1"
        let item = foodMenuItem[0]
        XCTAssertEqual(item.title, expectedValue)
    }
    
    func test_initializeMennuItem_addIngredients() {
        let expectedIngredients:[Ingredient] = [.broccoli, .carrot]
        let item = foodMenuItem[0]
        XCTAssertEqual(item.ingredients, expectedIngredients)
    }
}


