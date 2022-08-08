//
//  MainView.swift
//  Countries
//
//  Created by Sena Kurtak on 7.08.2022.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var savedStore : SavedStore = SavedStore()
    
    
    var body: some View {

        TabView{
            HomePage()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
           Saved()
                .tabItem{
                    Label("Saved", systemImage: "heart")
                }

        }
        .environmentObject(savedStore)
        
    }
}


