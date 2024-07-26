//
//  MainTabView.swift
//  dotThere
//
//  Created by 김한빛 on 7/25/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                DotThereView()
            }
            .tabItem {
                Image(systemName: "rectangle.stack")
                Text("Stack")
            }
            
            NavigationStack {
                AddView()
            }
            .tabItem {
                Image(systemName: "rectangle.stack.badge.plus")
                Text("Add")
            }
            
            NavigationStack {
                PickView()
            }
            .tabItem {
                Image(systemName: "sparkles.rectangle.stack")
                Text("Pick")
                
            }
            
            NavigationStack {
                MyView()
            }
            .tabItem {
                Image(systemName: "rectangle.inset.filled.and.person.filled")
                Text("My")
            }
            
        }
    }
}

#Preview {
    MainTabView()
}
