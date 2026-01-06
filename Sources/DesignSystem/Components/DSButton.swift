//
//  File.swift
//  DesignSystem
//
//  Created by Chinthaka Perera on 1/2/26.
//

import Foundation
import SwiftUI

/// Reusable primary button component for the design system.
///
/// Wraps a `Button` with consistent typography, spacing, and corner radius,
/// and supports an optional SF Symbol icon next to the title.
public struct DSButton: View {

    /// Text title displayed inside the button.
    private let title: String
    
    /// Optional SF Symbol name to show before the title.
    private let icon: String?
    
    /// Background color of the button.
    private let backgroundColor: Color
    
    /// Text and icon color.
    private let foregroundColor: Color
    
    /// Corner radius applied to the button background.
    private let cornerRadius: CGFloat
    
    /// Action executed when the button is tapped.
    private let action: () -> Void

    public init(
        title: String,
        icon: String? = nil,
        backgroundColor: Color = DSColor.primary,
        foregroundColor: Color = .white,
        cornerRadius: CGFloat = 12,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.icon = icon
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.cornerRadius = cornerRadius
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                if let icon {
                    Image(systemName: icon)
                }

                Text(title)
                    .font(DSTextStyle.body.bold())
            }
            .foregroundColor(foregroundColor)
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
        }
    }
}
