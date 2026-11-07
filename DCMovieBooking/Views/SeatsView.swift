//
//  SeatsView.swift
//  DCMovieBooking
//
//  Created by joe on 11/7/26.
//

import SwiftUI

struct SeatsView: View {
    @Environment(\.dismiss) var dismiss
    
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
            
            HStack(spacing: 20.0) {
                StatusUI()
                
                StatusUI(color: Color.majenta, text: "Reserved")

                StatusUI(color: Color.cyan2, text: "Selected")
            }
            .padding(.top, 60)
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
