//
//  DSAvatar.swift
//  DesignSystem
//
//  Created by Chinthaka Perera on 12/30/25.
//

import Foundation
import SwiftUI

/// Reusable circular avatar view.
///
/// Displays the first letter of the provided `name` inside a tinted circle
/// using the shared design system colors and typography.
public struct DSAvatar: View {
    
    /// Source string used to derive the avatar initial.
    let name: String
    
    /// Diameter of the avatar in points.
    let size: CGFloat
    
    /// Font used for the initial inside the avatar.
    let font: Font

    public init(name: String, size: CGFloat = 44, font: Font = DSTextStyle.headline) {
        self.name = name
        self.size = size
        self.font = font
    }

    public var body: some View {
        Circle()
            .fill(DSColor.primary.opacity(0.15))
            .frame(width: size, height: size)
            .overlay(
                Text(String(name.prefix(1)))
                    .font(font)
                    .foregroundColor(DSColor.primary)
            )
    }
}
