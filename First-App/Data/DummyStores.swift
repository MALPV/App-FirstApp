//
//  DummyStores.swift
//  First-App
//
//  Created by OWL Chile on 27-05-22.
//

import Foundation
import SwiftUI

final class DummyStoreModelData: ObservableObject {
    
    @Published var storesList = [
        Store(
            id: 0,
            name: "Belle Boutique",
            description: "Sale of backpacks and handbags",
            avatar: Image(systemName: "bag.circle"),
            favorite: true),
        Store(
            id: 1,
            name: "All Sport",
            description: "Sale of all sporting goods",
            avatar: Image(systemName: "cart.circle"),
            favorite: false),
        Store(
            id: 2,
            name: "Your Pet",
            description: "Sale of pet food",
            avatar: Image(systemName: "ant.circle"),
            favorite: true),
        Store(
            id: 3,
            name: "Electronicstore",
            description: "Sale of electronic products",
            avatar: Image(systemName: "tv.circle"),
            favorite: false)
    ]
    
    func addNewStrore(store: Store){
        print("ADD NEW STORE ID =, \(store.id)")
        storesList.append(store)
    }
    
    func deleteStore(store: Store){
        storesList.remove(at: store.id)
    }
}
