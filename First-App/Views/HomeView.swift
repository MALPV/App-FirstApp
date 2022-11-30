//
//  HomeView.swift
//  First-App
//
//  Created by OWL Chile on 27-05-22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            let dbFake = DummyStoreModelData()
            ListStoreView().environmentObject(dbFake)
            CreateStoreView().environmentObject(dbFake)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct CreateStoreView: View {
    
    @EnvironmentObject var storesModelData: DummyStoreModelData
    @State private var showDialogNewStore = false
    
    @State private var nameStore = ""
    @State private var descriptionStore = ""
    
    var body: some View {
        VStack{
            if showDialogNewStore {
                Text("New Store")
                    .padding()
                    .font(.title)
                
                    TextField("Name Store", text: $nameStore)
                        .padding()
                        .background(Color.gray.opacity(0.3).cornerRadius(10))
                        .foregroundColor(.blue)
                        .font(.headline)
                
                
                TextField("Description Store", text: $descriptionStore)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.blue)
                    .font(.headline)
                
                Button("Save new store",
                       action: {
                        storesModelData.addNewStrore(
                            store:
                                Store(
                                    id: storesModelData.storesList.count,
                                    name: nameStore,
                                    description: descriptionStore,
                                    avatar: Image(systemName: "cart.circle"),
                                    favorite: false))
                        
                        showDialogNewStore = false
                    })
                    .accentColor(Color.white)
                    .padding()
                    .background(Color(UIColor.blue))
                    .cornerRadius(12.0)
            }else{
                Button("Create New Store",
                       action: {
                        showDialogNewStore = true
                    })
                    .padding()
                    .accentColor(Color.white)
                    .background(Color(UIColor.blue))
                    .cornerRadius(12.0)
            }
            
        }.padding()
    }
}
