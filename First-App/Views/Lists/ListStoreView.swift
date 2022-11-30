//
//  ListStoreView.swift
//  First-App
//
//  Created by OWL Chile on 27-05-22.
//

import SwiftUI

struct ListStoreView: View {
    
    @EnvironmentObject var storesModelData: DummyStoreModelData
    @State private var showFavorites = false
    
    private var filteredStores: [Store] {
        return storesModelData.storesList.filter { store in
            return !showFavorites || store.favorite
        }
    }
    
    var body: some View {
        VStack{
            Toggle(isOn: $showFavorites){
                Text("Show Favorites")
            }.padding()
            
            List(filteredStores, id: \.id) { store in
                NavigationLink(
                    destination: DetailView(
                        store: store,
                        favorite: $storesModelData.storesList[store.id].favorite)){
                    RowStoreView(store: store)
                }
            }
            
        }.navigationTitle("Stores")
    }
}

struct ListStoreView_Previews: PreviewProvider {
    static var previews: some View {
        ListStoreView().environmentObject(DummyStoreModelData())
    }
}
