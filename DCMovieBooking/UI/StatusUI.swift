//
//  StatusUI.swift
//  DCMovieBooking
//
//  Created by joe on 10/28/26.
//

import SwiftUI

struct StatusUI: View {
    @State var color: Color = Color(.white)
    @State var text: String = "Available"
    
    var body: some View {
        HStack(spacing: 10.0) {
            Circle()
                .frame(width: 10, height: 10)
                .foregroundStyle(color)
            
            Text(text)
                .font(.subheadline)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    StatusUI()
}
