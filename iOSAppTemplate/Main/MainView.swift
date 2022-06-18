//
//  MainView.swift
//  iOSAppTemplate
//
//  Created by Ronald Meliton Borda Bernaola on 17/06/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Label("Home", systemImage: "house.circle")
                }
            ChatView()
                .tabItem{
                    Label("Chat", systemImage: "message.circle")
                }
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
        }.accentColor(.pink)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
