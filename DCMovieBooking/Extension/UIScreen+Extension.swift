//
//  UIScreen+Extension.swift
//  DCMovieBooking
//
//  Created by joe on 11/1/26.
//

import SwiftUI

extension UIScreen {
    static var current: UIScreen? {
        UIApplication.shared
            .connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first?.windowScene?.screen
    }
}
