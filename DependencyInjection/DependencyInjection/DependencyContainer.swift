//
//  DependencyContainer.swift
//  DependencyInjection
//
//  Created by Delstun McCray on 8/3/23.
//

import Foundation

class DependencyContainer {
    static let shared = DependencyContainer()
    
    func getService() -> Service {
        return Service()
    }
}
