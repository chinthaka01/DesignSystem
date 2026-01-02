//
//  File.swift
//  DesignSystem
//
//  Created by Chinthaka Perera on 1/2/26.
//

import Foundation
import SwiftUI

public struct DSButton: View {

    private let title: String
    private let icon: String?
    private let backgroundColor: Color
    private let foregroundColor: Color
    private let cornerRadius: CGFloat
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
