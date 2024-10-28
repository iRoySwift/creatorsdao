//
//  BaseNavigationView.swift
//  creatorsdao
//
//  Created by Roy on 10/28/24.
//

import SwiftUI

struct BaseNavigationStack: View {
    var body: some View {
        NavigationStack{
            List(){
                Section{
                    NavigationLink {
                        BaseImageUIView()
                    } label: {
                        Image(systemName: "house")
                        Text("Home")
        
                    }
                    
                    HStack{
                        Image(systemName: "paintpalette")
                        Text("Color")
                    }
                    HStack{
                        Image(systemName: "photo.artframe")
                        Text("Stack")
                    }
                }
                Section("This is My Title"){
                    HStack{
                        Image(systemName: "house")
                        Text("Home")
                    }
                    HStack{
                        Image(systemName: "paintpalette")
                        Text("Color")
                    }
                    HStack{
                        Image(systemName: "photo.artframe")
                        Text("Stack")
                    }
                }
                
            }
            .navigationTitle("NavigationStack")
        }
    }
}

#Preview {
    BaseNavigationStack()
}
