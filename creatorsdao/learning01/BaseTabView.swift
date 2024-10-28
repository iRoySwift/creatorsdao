//
//  BaseTabView.swift
//  creatorsdao
//
//  Created by Roy on 10/28/24.
//

import SwiftUI

struct BaseTabView: View {
    var body: some View {
        TabView{
            Text("Tab 1 content")
                .tabItem{
                    Text("Home")
                    Image(systemName: "house")
                }
            Color.red
                .tabItem{
                    Text("Color")
                    Image(systemName: "paintpalette")
                }
            BaseStackView()
                .tabItem{
                    Label("Stack", systemImage: "photo.artframe")
                    
                }
            BaseNavigationStack()
            .tabItem{
                Label("Navigation",systemImage: "list.bullet")
            }
            
        }
    }
}

#Preview {
    BaseTabView()
}
