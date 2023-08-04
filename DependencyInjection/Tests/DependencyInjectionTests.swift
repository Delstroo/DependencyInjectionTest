//
//  DependencyInjectionTests.swift
//  DependencyInjection
//
//  Created by Delstun McCray on 8/3/23.
//

import XCTest
@testable import DependencyInjection

class MockService: Service {
    var performActionCalledCount = 0
    
    override func doSomething() {
        performActionCalledCount += 1
    }
}

class DependencyInjectionTests: XCTestCase {
    
    // MARK: - Constructor Injection Test
    
    func testConstructorInjection() {
        let mockService = MockService()
        let client = Client(service: mockService)
        
        client.useService()
        
        XCTAssertEqual(mockService.performActionCalledCount, 1)
    }
    
    // MARK: - Property Injection Test
    
    func testPropertyInjection() {
        let mockService = MockService()
        let client = Client(service: mockService)
        client.propertyService = mockService
        
        client.usePropertyService()
        
        XCTAssertEqual(mockService.performActionCalledCount, 1)
    }
    
    // MARK: - Method Injection Test
    
    func testMethodInjection() {
        let mockService = MockService()
        let client = Client(service: mockService)
        
        client.userMethodService(mockService)
        
        XCTAssertEqual(mockService.performActionCalledCount, 1)
    }
}
