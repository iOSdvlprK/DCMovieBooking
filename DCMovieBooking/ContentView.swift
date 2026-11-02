//
//  ContentView.swift
//  DCMovieBooking
//
//  Created by joe on 10/28/26.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTab: Tab = .home
    
    var body: some View {
        VStack(spacing: 0.0) {
            TabView(selection: $currentTab) {
                SwiftUI.Tab(value: Tab.home) {
                    Text("Home")
                        .toolbarVisibility(.hidden, for: .tabBar)
                }
                
                SwiftUI.Tab(value: Tab.location) {
                    Text("Location")
                        .toolbarVisibility(.hidden, for: .tabBar)
                }
                
                SwiftUI.Tab(value: Tab.ticket) {
                    TicketView()
                        .toolbarVisibility(.hidden, for: .tabBar)
                }
                
                SwiftUI.Tab(value: Tab.category) {
                    Text("Category")
                        .toolbarVisibility(.hidden, for: .tabBar)
                }
                
                SwiftUI.Tab(value: Tab.profile) {
                    Text("Profile")
                        .toolbarVisibility(.hidden, for: .tabBar)
                }
            }
            
            CustomTabBar(currentTab: $currentTab)
        }
    }
}

#Preview {
    ContentView()
}
