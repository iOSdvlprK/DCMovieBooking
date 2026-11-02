//
//  ContentView.swift
//  DCMovieBooking
//
//  Created by joe on 10/28/26.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            TabView(selection: $currentTab) {
                Text("Home")
                    .tag(Tab.home)
                
                Text("Location")
                    .tag(Tab.location)
                
                TicketView()
                    .tag(Tab.ticket)
                
                Text("Category")
                    .tag(Tab.category)
                
                Text("Profile")
                    .tag(Tab.profile)
            }
            
            CustomTabBar(currentTab: $currentTab)
        }
    }
}

#Preview {
    ContentView()
}
