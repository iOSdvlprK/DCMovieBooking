//
//  CircleBackground.swift
//  DCMovieBooking
//
//  Created by joe on 10/28/26.
//

import SwiftUI

struct CircleBackground: View {
    @State var color: Color = Color("greenCircle")
    
    var body: some View {
        Circle()
            .frame(width: 300, height: 300)
            .foregroundStyle(color)
    }
}

#Preview {
    CircleBackground()
}
