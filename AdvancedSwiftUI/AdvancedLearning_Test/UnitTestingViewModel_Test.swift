//
//  UnitTestingViewModel_Test.swift
//  AdvancedLearning_Test
//
//  Created by Rubban Iftikhar on 15/03/2025.
//

import XCTest
@testable import AdvancedSwiftUI
//Naming Structure: test_unitofWork_stateUnderTest_ExpectedBehaviour
// Naming test_[class or struct]_[variable or function]_[expected result]
//Testing Structure: Given, When, Then

final class UnitTestingViewModel_Test: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_UnitTestingViewModel_isPremium_shouldBeTrue(){
        //Given
        let userIsPremium: Bool = true
        //When
        let vm = UnitTestingViewModel(isPremium: userIsPremium)
        //Then
        XCTAssert(vm.isPremium)
    }
    
    func test_UnitTestingViewModel_isPremium_shouldBeFalse(){
        //Given
        let userIsPremium: Bool = false
        //When
        let vm = UnitTestingViewModel(isPremium: userIsPremium)
        //Then
        XCTAssertFalse(vm.isPremium)
    }
    
    func test_UnitTestingViewModel_isPremium_shouldBeInjected(){
        //Given
        let userIsPremium: Bool = Bool.random()
        //When
        let vm = UnitTestingViewModel(isPremium: userIsPremium)
        //Then
        XCTAssertEqual(vm.isPremium, userIsPremium)
    }
    
    func test_UnitTestingViewModel_isPremium_shouldBeInjected_Stress(){
        //Given
        for _ in 0..<10 {
            let userIsPremium: Bool = Bool.random()
            //When
            let vm = UnitTestingViewModel(isPremium: userIsPremium)
            //Then
            XCTAssertEqual(vm.isPremium, userIsPremium)
        }
    }
    
    func test_UnitTestingViewModel_dataArray_shouldBeEmpty() {
        //Given
        
        //When
        let vm = UnitTestingViewModel(isPremium: true)
        //Then
        XCTAssertTrue(vm.dataArray.isEmpty)
    }
    
    
    func test_UnitTestingViewModel_dataArray_shouldAddItems() {
        //Given
        
        //When
        let vm = UnitTestingViewModel(isPremium: true)
        vm.addItem(item: "Test")
        //Then
        XCTAssertEqual(vm.dataArray.count, 1)
        XCTAssertTrue(!vm.dataArray.isEmpty)
        XCTAssertFalse(vm.dataArray.isEmpty)
        
    }
    
    func test_UnitTestingViewModel_selectedItem_isNil(){
        //Given
        
        //when
        let vm = UnitTestingViewModel(isPremium: false)
        //then
        XCTAssertEqual(vm.selectedItem, nil)
    }
    
    func test_UnitTestingViewModel_selectItem_isFound(){
        //Given
        
        //when
        let vm = UnitTestingViewModel(isPremium: false)
        vm.addItem(item: "Test")
        vm.addItem(item: "Hi")
        //then
        vm.selectItem(item: "Hi")
        XCTAssertEqual(vm.selectedItem, "Hi")
        XCTAssertNotEqual(vm.selectedItem, nil)
    }
    
    
    func test_UnitTestingViewModel_selectItem_selectingInvlidItem(){
        //Given
        
        //when
        let vm = UnitTestingViewModel(isPremium: false)
        vm.addItem(item: "Test")
        //then
        vm.selectItem(item: "Yo")
        XCTAssertNil(vm.selectedItem)
    }
    
    func test_UnitTestingViewModel_selectItem_shouldBeSelected(){
        let vm = UnitTestingViewModel(isPremium: false)
        let newItem = UUID().uuidString
        vm.addItem(item: newItem)
        vm.selectItem(item: newItem)
        
        XCTAssertNotNil(vm.selectedItem)
        XCTAssertEqual(vm.selectedItem, newItem)
    }
    
    
    
    /*
     func saveItem(item: String) throws {
         var flag : Bool = false
         guard !item.isEmpty else {
             throw dataError.noData
         }
         for element in dataArray {
             if item == element {
                 print ("Save data here")
                 flag = true
             }
         }
         if flag == false {
             throw dataError.itemNotFound
             print("Data was never found")
         }
         enum dataError : LocalizedError {
             case noData
             case itemNotFound
         }
     }
     */
    
    func test_UnitTestingViewModel_saveItem_isEmpty_ItemNotFound(){
        let vm = UnitTestingViewModel(isPremium: false)
        let newItem : String = ""
        let anotherNewItem : String = UUID().uuidString
        XCTAssertThrowsError( try vm.saveItem(item: newItem))
        XCTAssertThrowsError( try vm.saveItem(item: anotherNewItem))
        
        XCTAssertThrowsError(try vm.saveItem(item: anotherNewItem), "Item not found"){ error in
            let returnedError = error as? dataError  //UnitTestingViewModel
            XCTAssertEqual(returnedError, dataError.itemNotFound)
        }
    }
}
