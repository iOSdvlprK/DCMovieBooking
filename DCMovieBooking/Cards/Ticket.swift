//
//  Ticket.swift
//  DCMovieBooking
//
//  Created by joe on 10/30/26.
//

import SwiftUI

struct Ticket: View {
    @State private var title = "Thor"
    @State private var subtitle = "Love and Thunder"
    
    var gradient = [Color.cyan2, Color.cyan2.opacity(0), Color.cyan2.opacity(0)]
    
    var body: some View {
        VStack(spacing: 0.0) {
            VStack(spacing: 4.0) {
                Text(title)
                    .fontWeight(.bold)
                
                Text(subtitle)
            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
            .frame(width: 250, height: 325, alignment: .top)
            .foregroundStyle(.white)
            .background {
                Image(.thorTop)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .mask {
                Image(.thorTop)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .overlay {
                RoundedRectangle(cornerRadius: 40)
                    .stroke(LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
            }
            .cornerRadius(40, corners: [.topLeft, .topRight])
        }
        .frame(height: 460)
        .font(.footnote)
        .shadow(radius: 10)
    }
}

#Preview {
    Ticket()
}
