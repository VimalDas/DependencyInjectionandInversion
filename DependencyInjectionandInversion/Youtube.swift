//
//  Youtube.swift
//  DependencyInjectionandInversion
//
//  Created by Vimal Das on 12/11/23.
//

import UIKit

// today we will check dependency injection and dependency inversion

// lets start

/*
 dependency injection
 whats dependency injection: its the process of removing the instance creation of a dependency to outside of our class. for example
 
 */
// we created an abstraction
protocol NetworkLayer {
    func loadData()
}

class NetworkManager: NetworkLayer {
    func loadData() {
        
    }
}

class NewNetworkManager: NetworkLayer {
    func loadData() {
        
    }
}

class MyClass {
    private let networkManager: NetworkLayer!
    
    func loadSomething() {
        networkManager?.loadData()
    }
    
    init(networkManager: NetworkLayer) {
        self.networkManager = networkManager
    }

}

func somethingToAvoidCompileErrors() {
    let networkManagerObject = NetworkManager()
    let object = MyClass(networkManager: networkManagerObject)
}

