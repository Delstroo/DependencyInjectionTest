//
//  ContentView.swift
//  DependencyInjection
//
//  Created by Delstun McCray on 8/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var resultText: String = ""
    var body: some View {
        VStack {
            Text("Dependency Injection Examples")
                .font(.title)
            
            Button("Constructor Injection") { 
                let service = DependencyContainer.shared.getService()
                let client = Client(service: service)
                client.useService()
                    resultText = "Constructor Injection"
            }
            
            Button("Property Injection") { 
                let service = DependencyContainer.shared.getService()
                let client = Client(service: service)
                client.usePropertyService()
                    resultText = "Property Injection"
            }
            
            Button("Method Injection") { 
                let service = DependencyContainer.shared.getService()
                let client = Client(service: service)
                client.usePropertyService()
                    resultText = "Method Injection"
            }
            Text(resultText)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
