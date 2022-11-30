//
//  LoginView.swift
//  First-App
//
//  Created by OWL Chile on 27-05-22.
//

import SwiftUI

struct LoginView: View {
    @State var isLinkActive = false
    
    var body: some View{
        NavigationView {
            VStack {
                Text("Hello, world!")
                    
                NavigationLink(destination: HomeView(), isActive: $isLinkActive) {
                    Button("Sign in",
                           action: {
                            self.isLinkActive = true
                        })
                        .accentColor(Color.white)
                        .padding()
                        .background(Color(UIColor.blue))
                        .cornerRadius(12.0)
                }
                
            }.navigationBarTitle("Log in")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
