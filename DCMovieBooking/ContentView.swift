//
//  ContentView.swift
//  DCMovieBooking
//
//  Created by joe on 10/28/26.
//

import SwiftUI

enum BookingRoute: Hashable {
    case booking
    case seats
}

struct ContentView: View {
    @State private var path: [BookingRoute] = []
    @State private var currentTab: TabSpot = .home
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 0.0) {
                TabView(selection: $currentTab) {
                    Tab(value: TabSpot.home) {
                        HomeView()
                            .toolbarVisibility(.hidden, for: .tabBar)
                    }
                    
                    Tab(value: TabSpot.location) {
                        Text("Location")
                            .toolbarVisibility(.hidden, for: .tabBar)
                    }
                    
                    Tab(value: TabSpot.ticket) {
                        TicketView()
                            .toolbarVisibility(.hidden, for: .tabBar)
                    }
                    
                    Tab(value: TabSpot.category) {
                        Text("Category")
                            .toolbarVisibility(.hidden, for: .tabBar)
                    }
                    
                    Tab(value: TabSpot.profile) {
                        Text("Profile")
                            .toolbarVisibility(.hidden, for: .tabBar)
                    }
                }
                
                CustomTabBar(currentTab: $currentTab)
            }
            .ignoresSafeArea(.keyboard)
            .navigationDestination(for: BookingRoute.self) { route in
                switch route {
                case .booking:
                    BookingView()
                case .seats:
                    SeatsView(onBookingComplete: {
                        path.removeAll()
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
