//
//  Client.swift
//  DependencyInjection
//
//  Created by Delstun McCray on 8/3/23.
//

import Foundation

class Client {
    private let service: Service
    
    init(service: Service) {
        self.service = service
    }
    
    func useService() {
        service.doSomething()
    }
    
    // MARK: - Example of Property Injection
    var propertyService: Service?
    
    func usePropertyService() {
        propertyService?.doSomething()
    }
    
    // MARK: - Example of Method Injection
    func userMethodService(_ service: Service) {
        service.doSomething()
    }
    
}
