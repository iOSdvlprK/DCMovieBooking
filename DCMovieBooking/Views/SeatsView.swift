//
//  SeatsView.swift
//  DCMovieBooking
//
//  Created by joe on 11/7/26.
//

import SwiftUI

struct SeatsView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var animate = false
    @State private var showButton = false
    
    var body: some View {
        VStack(spacing: 0.0) {
            HStack {
                CircleButton(action: {
                    dismiss()
                }, image: "arrow.left")
                
                Spacer()
                
                Text("Choose Seats")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                
                Spacer()
                
                CircleButton(action: {}, image: "calendar")
            }
            .padding(.top, 46)
            .padding(.horizontal, 20)
            
            Image(.frontSeat)
                .padding(.top, 55)
                .glow(color: Color.pink2, radius: 20)
            
            Image(.seats)
                .frame(height: 240)
                .padding(.top, 60)
                .padding(.horizontal, 20)
                .onTapGesture {
                    withAnimation(.spring) {
                        showButton = true
                    }
                }
            
            HStack(spacing: 20.0) {
                StatusUI()
                
                StatusUI(color: Color.majenta, text: "Reserved")

                StatusUI(color: Color.cyan2, text: "Selected")
            }
            .padding(.top, 60)
            
            ZStack(alignment: .topLeading) {
                Circle()
                    .frame(width: 200, height: 230)
                    .foregroundStyle(Color.purple2)
                    .blur(radius: animate ? 70 : 100)
                    .offset(x: animate ? -100 : 20, y: animate ? -20 : 20)
                    .task {
                        withAnimation(.easeInOut(duration: 7).repeatForever()) {
                            animate.toggle()
                        }
                    }

                Circle()
                    .frame(width: 200, height: 230)
                    .foregroundStyle(Color.lightBlue)
                    .blur(radius: animate ? 50 : 100)
                    .offset(x: animate ? 50 : 70, y: animate ? 70 : 30)
                    .task {
                        withAnimation(.easeInOut(duration: 4).repeatForever()) {
                            animate.toggle()
                        }
                    }

                Circle()
                    .frame(width: 200, height: 230)
                    .foregroundStyle(Color.pink2)
                    .blur(radius: animate ? 70 : 100)
                    .offset(x: animate ? 150 : 170, y: animate ? 90 : 100)
                    .task {
                        withAnimation(.easeInOut(duration: 2).repeatForever()) {
                            animate.toggle()
                        }
                    }
                
                VStack(alignment: .leading, spacing: 30.0) {
                    HStack(spacing: 10.0) {
                        Image(systemName: "calendar")
                        Text("November 8, 2026")
                        Circle()
                            .frame(width: 6, height: 6)
                        Text("6 p.m.")
                    }
                    
                    HStack(spacing: 10.0) {
                        Image(systemName: "ticket.fill")
                        Text("VIP Section")
                        Circle()
                            .frame(width: 6, height: 6)
                        Text("Seat 9, 10")
                    }
                    
                    HStack(spacing: 10.0) {
                        Image(systemName: "cart.fill")
                        Text("Total: $30")
                    }
                }
                .padding(42)
                .font(.subheadline)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .clipped()
            .foregroundStyle(.white)
            .background(.ultraThinMaterial)
            .ignoresSafeArea()
            .padding(.top, 50)
            .offset(y: showButton ? 0 : 260)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color.background)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SeatsView()
}
