//
//  MVVMTodoListTests.swift
//  MVVMTodoListTests
//
//  Created by 김수환 on 2022/09/18.
//

import XCTest
@testable import MVVMTodoList

final class MVVMTodoListTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let manager = TodoManager.emptyState()
        XCTAssertTrue(manager.datas.count == 0, "Start with empty list")
        
        manager.addData(value: "123")
        manager.addData(value: "456")
        XCTAssertTrue(manager.datas.count == 2, "Count : 2")
        
        manager.deleteData(at: IndexSet(0...0))
        XCTAssertTrue(manager.datas.count == 1, "delete added data once (1 data left)")
    }

}
