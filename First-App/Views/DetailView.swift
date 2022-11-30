//
//  DetailView.swift
//  First-App
//
//  Created by OWL Chile on 27-05-22.
//

import SwiftUI

struct DetailView: View {
    
    var store: Store
    
    @Binding var favorite: Bool
    
    var body: some View {
        VStack{
            store.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 6)
            
            HStack{
                
                Text(store.name)
                    .font(.largeTitle)
                
                Button{
                    favorite.toggle()
                } label: {
                    if favorite{
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                    }else{
                        Image(systemName: "star")
                    }
                }
                
            }
            
            Text(store.description)
                .font(.title2)
            
            Spacer()
        }.navigationTitle("Detail")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
            store:
                Store(
                    id: 2,
                    name: "All Sport",
                    description: "Sale of all sporting goods",
                    avatar: Image(systemName: "cart.circle"),
                    favorite: false),
            favorite: .constant(false)
        )
    }
}
