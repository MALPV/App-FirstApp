//
//  RowStoreView.swift
//  First-App
//
//  Created by OWL Chile on 27-05-22.
//

import SwiftUI

struct RowStoreView: View {
    
    var store: Store
    
    var body: some View {
        HStack {
            store.avatar
                .resizable()
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                Text(store.name)
                    .font(.title)
                Text(store.description)
                    .font(.subheadline)
            }
            Spacer()
            
            if store.favorite{
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            }else{
                Image(systemName: "star")
            }
            
        }
    }
}

struct RowStoreView_Previews: PreviewProvider {
    static var previews: some View {
        RowStoreView(store:
            Store(
                id: 1,
                name: "Belle Boutique",
                description: "Sale of backpacks and handbags",
                avatar: Image(systemName: "bag.circle"),
                favorite: true
            ))
            .previewLayout(
                .fixed(width: 400, height: 80)
            )
    }
}
